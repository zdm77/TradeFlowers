unit UReport;
interface
uses
  Uni,
  frxClass,
  frxDBSet,
  frxExportXLS,
  System.SysUtils;
var
  Query1 : TUniQuery;
  Report1 : TfrxReport;
  frxDBDataset1 : TfrxDBDataset;
  XlsExport1 : TfrxXLSExport;
  procedure CreateReport(report_name : string);
  procedure ОтчетЛогистикаПоВсем(s_date : TDateTime);
  procedure ОтчетЗаказ(код_заказа : Integer);
  procedure ОтчетЗакупка(код_маркировки : Integer; дата_вылета : Tdate;
                            все_закупки : Boolean; код_плантации, код_сорта : Integer;
                            показать_заказ : Boolean);
  procedure ОтчетПрайсЛистЗакупка(код_закупщика : Integer = 0);
  procedure ОтчетКонтрагенты(id_type, id_order, id_stat : Integer);
implementation
uses
  UDataModule1;
procedure CreateReport(report_name : string);
begin
  Report1 := TfrxReport.Create(nil);
  frxDBDataset1 := TfrxDBDataset.Create(nil);
  frxDBDataset1.Name := 'frxDBDataset1';
  frxDBDataset1.DataSet := Query1;
  Report1.DataSet := frxDBDataset1;
  Report1.DataSetName := 'frxDBDataset1';
  Report1.Report.DataSet := frxDBDataset1;
  Report1.LoadFromFile('..\reports\' + report_name + '.fr3');
  XlsExport1 := TfrxXLSExport.Create(nil);
  Report1.PrepareReport();
  try
    Report1.ShowReport(true);
  finally
    FreeAndNil(Report1);
    FreeAndNil(frxDBDataset1);
    FreeAndNil(Query1);
  end;
end;
procedure ОтчетЛогистикаПоВсем(s_date : TDateTime);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'select sum(zd."кол_во_фулбоксов") as fb, f.uni_name f_name,  z."дата_вылета",'
               + ' t.uni_name t_name,  k.uni_name k_name,  p.name p_name,  m.uni_name m_name '
               + ' FROM  "документы"."заказы" z' +
               ' INNER JOIN "карго"."агенства" k ON (z."код_карго" = k.id)' +
               ' LEFT OUTER JOIN "траки"."траки" t ON (z."код_трака" = t.id)' +
               ' LEFT OUTER JOIN "прикулинг"."агенства" p ON (z."код_прикулинга" = p.id)'
               + ' INNER JOIN "маркировки"."маркировки" m ON (z."код_маркировки" = m.id)'
               + ' inner join "документы"."заказы_деталь" zd on (zd."код_заказа"=z.id)' +
               ' inner join "документы"."фито" f on (f.id=z."код_фито")' +
               ' where дата_вылета=:d' +
               ' group by z."дата_вылета", t_name, k_name, p_name, m_name, f_name' +
               ' order by m_name';
    ParamByName('d').Value := s_date;
    Open;
  end;
  CreateReport('логистика');
end;
procedure ОтчетЗаказ(код_заказа : Integer);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'SELECT z."номер", zd."кол_во_фулбоксов" as fb, f.uni_name f_name,' +
               ' z."дата_вылета", t.uni_name t_name, k.uni_name k_name, p.name p_name,' +
               ' m.uni_name m_name, cl.name cl_name, cl."юр_адрес", cl."юр_имя", cl."телефон",'
               + ' cl."почта", cl."факс", pl.uni_name pl_name, st.uni_name st_name, zd."длина",'
               + ' zd."цена", zd."стеблей" FROM "документы"."заказы" z INNER JOIN "карго"."агенства" k ON (z."код_карго" = k.id)'
               + '  LEFT OUTER JOIN "траки"."траки" t ON (z."код_трака" = t.id)' +
               '  LEFT OUTER JOIN "прикулинг"."агенства" p ON (z."код_прикулинга" = p.id)'
               + '  INNER JOIN "маркировки"."маркировки" m ON (z."код_маркировки" = m.id)'
               + '  inner join "документы"."заказы_деталь" zd on (zd."код_заказа"=z.id)'
               + '  inner join "документы"."фито" f on (f.id=z."код_фито")' +
               '  inner join "контрагенты"."клиенты" cl on (m."код_клиента"=cl.id)' +
               '  inner join "продукция"."плантации" pl on (pl.id=zd."код_плантации")' +
               '  inner join "продукция"."сорта" st on (st.id=zd."код_сорта")' +
               ' where z.id=' + IntToStr(код_заказа) +
               '  order by m_name, pl_name, st_name';
    Open;
  end;
  CreateReport('заказ');
end;
procedure ОтчетЗакупка(код_маркировки : Integer; дата_вылета : Tdate;
                          все_закупки : Boolean; код_плантации, код_сорта : Integer;
                          показать_заказ : Boolean);
var
  s : string;
begin
  s := 'pt.name || ''. Сорт: '' || st.name || ''. FB: '' || dt."кол_во_фулбоксов" ||'
+ '''. Длина: '' || dt."длина" || ''. Цена: '' || dt."цена" || ''. Стеблей: '' ||'
+ ' dt."стеблей"||''. NO COMPRAS: ''|| dd1.fbb';
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'SELECT dd2.no_compras_mark , dd3.no_compras_all, dt."желаемые_плантации", doc."дата_вылета", z.дата_закупки,         '
               + ' m.name m_name, pt.name pt_name, st.name st_name, dt."кол_во_фулбоксов",    '
               + '  dt."стеблей", pt.uni_name AS pt_uni_name, st.uni_name st_uni_name,       '
               + '  pt2.uni_name p2_uni_name, st2.uni_name s2_uni_name, zt.fb, zt."стеблей" count_zakup,'
               + '  zt."длина" dlina_zakup, zt."цена" price_zakup, u.name u_name,' +
               '  u1.name u_name_zakup, ' + s +
               ' as sss,dt.id dt_id,dd1.fbb FROM "документы"."заказы" doc' +
               '  INNER JOIN "пользователи"."пользователи" u ON (doc."код_пользователя" ='
               + '  u.id)   ' +
               '  INNER JOIN "маркировки"."маркировки" m ON (doc."код_маркировки" = m.id)'
               + '  INNER JOIN "документы"."заказы_деталь" dt ON (doc.id = dt."код_заказа")'
               + '  INNER JOIN "продукция"."плантации" pt ON (dt."код_плантации" = pt.id)'
               + '   INNER JOIN "продукция"."сорта" st ON (dt."код_сорта" = st.id)' +
               '   left join "документы"."закупки" z on (z."код_детали_заказа" = dt.id)'
               + '  left join "документы"."закупки_деталь" zt on (zt."код_закупки" = z.id)'
               + '  left join "продукция"."плантации" pt2 ON (zt."код_плантации" = pt2.id)'
               + '  left join "продукция"."сорта" st2 ON (zt."код_сорта" = st2.id)' +
               ' left JOIN "пользователи"."пользователи" u1 ON (z."код_пользователя" = u1.id'
               + ' ) left join (select id, кол_во_фулбоксов-COALESCE(fb,0) fbb' +
               ' from (SELECT z1."кол_во_фулбоксов", z1.id  FROM "документы"."заказы_деталь" z1'
               + ' ) d1 left join (SELECT sum(zd.fb) fb,  код_детали_заказа' +
               ' FROM "документы"."закупки_деталь" zd' +
               ' INNER JOIN "документы"."закупки" z ON (zd."код_закупки" = z.id)' +
               ' INNER JOIN "документы"."заказы_деталь" zdd ON (' +
               ' z."код_детали_заказа" = zdd.id)' + ' group by код_детали_заказа' +
               ') d2 on (d2.код_детали_заказа = d1.id)' + ') dd1 on (dd1.id = dt.id)  ' +
               ' inner join (select sum(o.fbo-COALESCE(z.fbz,0)) no_compras_mark , o.ido from'
               + ' (select sum(od."кол_во_фулбоксов") fbo, od."код_заказа" ido' +
               ' from "документы"."заказы_деталь" od inner join "документы"."заказы" ' +
               ' o on (o.id=od."код_заказа") where o."дата_вылета"=:d ';
    if код_маркировки <> 0 then
      sql.Add(' and o."код_маркировки"=' + IntToStr(код_маркировки));
    if код_плантации <> 0 then
      sql.Add(' and od."код_плантации"=' + IntToStr(код_плантации));
    if код_сорта <> 0 then
      sql.Add(' and  od."код_сорта"=' + IntToStr(код_сорта));
    sql.Add(' group by od."код_заказа"' +
    ' ) o left join (select sum(zd.fb) fbz, zd."код_заказа" idz' +
    ' from "документы"."закупки_деталь" zd group by zd."код_заказа"' +
    ') z on(z.idz=o.ido) group by o.ido) dd2 on (dd2.ido = doc.id),' +
    ' (select sum(o.fbo-COALESCE(z.fbz,0)) no_compras_all from' +
    ' (select sum(od."кол_во_фулбоксов") fbo, od."код_заказа" ido' +
    ' from "документы"."заказы_деталь" od inner join "документы"."заказы" o on (o.id=od."код_заказа")'
    + ' where o."дата_вылета"=:d ');
    if код_маркировки <> 0 then
      sql.Add(' and o."код_маркировки"=' + IntToStr(код_маркировки));
    if код_плантации <> 0 then
      sql.Add(' and od."код_плантации"=' + IntToStr(код_плантации));
    if код_сорта <> 0 then
      sql.Add(' and  od."код_сорта"=' + IntToStr(код_сорта));
    sql.Add(' group by od."код_заказа") o left join' +
    ' (select sum(zd.fb) fbz, zd."код_заказа" idz from "документы"."закупки_деталь" zd '
    + ' group by zd."код_заказа") z on(z.idz=o.ido)) dd3 where 1=1 ');
    if код_маркировки <> 0 then
      sql.Add(' and m.id=' + IntToStr(код_маркировки));
    if код_плантации <> 0 then
      sql.Add(' and pt.id=' + IntToStr(код_плантации));
    if код_сорта <> 0 then
      sql.Add(' and st.id=' + IntToStr(код_сорта));
    if все_закупки = false then
      sql.Add(' and dd1.fbb>0');
    sql.Add(' and  doc."дата_вылета"=:d');
    ParamByName('d').AsDate := дата_вылета;
    sql.Add(' order by m_name,  pt.name, st.name, zt.id');
    Open;
  end;
  if показать_заказ = true then
    CreateReport('закупка')
  else
    CreateReport('закупка_без_заказа');
end;
procedure ОтчетПрайсЛистЗакупка(код_закупщика : Integer = 0);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'SELECT s.name s_name,  s.uni_name,  s.reg_name,  l.name l_name,' +
               '  pr.name g_name,  dc."цена",  dc."код_длины",  dc."код_цены"' +
               ' FROM  "склад"."ценовые_группы" pr  INNER JOIN "склад"."цена_сорт" cs ON (pr.id = cs."код_цены")'
               + '  INNER JOIN "продукция"."сорта" s ON (cs."код_сорта" = s.id)' +
               '  INNER JOIN "склад"."длина_цена" dc ON (pr.id = dc."код_цены")' +
               '  INNER JOIN "склад"."длины" l ON (l.id = dc."код_длины")';
    Open;
  end;
  CreateReport('cross_price');
end;
procedure ОтчетКонтрагенты(id_type, id_order, id_stat : Integer);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'SELECT c.*,  s.id id_stat,  s.name status,  u.id id_manager,' +
  ' u.name user_name, c.скрыт, m.name mark_name  FROM ' +
  ' "контрагенты"."клиенты" c ' +
  '   INNER JOIN "контрагенты"."статусы" s ON (c."код_статуса_работы" = s.id)'
  + '     LEFT OUTER JOIN "пользователи"."пользователи" u ON (c."код_пользователя" ='
  + '   u.id)' +
  '   left outer join "маркировки"."маркировки" m on (m."код_клиента"=c.id)';
    sql.Add(' where код_типа=' + IntToStr(id_type));
    if id_stat <> 0 then
      sql.Add(' and s.id=' + IntToStr(id_stat));
    case id_order of
      1 : sql.Add(' order by name');
      2 : sql.Add(' order by status');
    end;
    Open;
  end;
  CreateReport('контрагенты');
end;
end.
