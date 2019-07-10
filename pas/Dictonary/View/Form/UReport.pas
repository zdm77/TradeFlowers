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
  procedure ��������������������(s_date : TDateTime);
  procedure ����������(���_������ : Integer);
  procedure ������������(���_���������� : Integer; ����_������ : Tdate;
                            ���_������� : Boolean; ���_���������, ���_����� : Integer;
                            ��������_����� : Boolean);
  procedure ���������������������(���_��������� : Integer = 0);
  procedure ����������������(id_type, id_order, id_stat : Integer);
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
procedure ��������������������(s_date : TDateTime);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'select sum(zd."���_��_���������") as fb, f.uni_name f_name,  z."����_������",'
               + ' t.uni_name t_name,  k.uni_name k_name,  p.name p_name,  m.uni_name m_name '
               + ' FROM  "���������"."������" z' +
               ' INNER JOIN "�����"."��������" k ON (z."���_�����" = k.id)' +
               ' LEFT OUTER JOIN "�����"."�����" t ON (z."���_�����" = t.id)' +
               ' LEFT OUTER JOIN "���������"."��������" p ON (z."���_����������" = p.id)'
               + ' INNER JOIN "����������"."����������" m ON (z."���_����������" = m.id)'
               + ' inner join "���������"."������_������" zd on (zd."���_������"=z.id)' +
               ' inner join "���������"."����" f on (f.id=z."���_����")' +
               ' where ����_������=:d' +
               ' group by z."����_������", t_name, k_name, p_name, m_name, f_name' +
               ' order by m_name';
    ParamByName('d').Value := s_date;
    Open;
  end;
  CreateReport('���������');
end;
procedure ����������(���_������ : Integer);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'SELECT z."�����", zd."���_��_���������" as fb, f.uni_name f_name,' +
               ' z."����_������", t.uni_name t_name, k.uni_name k_name, p.name p_name,' +
               ' m.uni_name m_name, cl.name cl_name, cl."��_�����", cl."��_���", cl."�������",'
               + ' cl."�����", cl."����", pl.uni_name pl_name, st.uni_name st_name, zd."�����",'
               + ' zd."����", zd."�������" FROM "���������"."������" z INNER JOIN "�����"."��������" k ON (z."���_�����" = k.id)'
               + '  LEFT OUTER JOIN "�����"."�����" t ON (z."���_�����" = t.id)' +
               '  LEFT OUTER JOIN "���������"."��������" p ON (z."���_����������" = p.id)'
               + '  INNER JOIN "����������"."����������" m ON (z."���_����������" = m.id)'
               + '  inner join "���������"."������_������" zd on (zd."���_������"=z.id)'
               + '  inner join "���������"."����" f on (f.id=z."���_����")' +
               '  inner join "�����������"."�������" cl on (m."���_�������"=cl.id)' +
               '  inner join "���������"."���������" pl on (pl.id=zd."���_���������")' +
               '  inner join "���������"."�����" st on (st.id=zd."���_�����")' +
               ' where z.id=' + IntToStr(���_������) +
               '  order by m_name, pl_name, st_name';
    Open;
  end;
  CreateReport('�����');
end;
procedure ������������(���_���������� : Integer; ����_������ : Tdate;
                          ���_������� : Boolean; ���_���������, ���_����� : Integer;
                          ��������_����� : Boolean);
var
  s : string;
begin
  s := 'pt.name || ''. ����: '' || st.name || ''. FB: '' || dt."���_��_���������" ||'
+ '''. �����: '' || dt."�����" || ''. ����: '' || dt."����" || ''. �������: '' ||'
+ ' dt."�������"||''. NO COMPRAS: ''|| dd1.fbb';
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'SELECT dd2.no_compras_mark , dd3.no_compras_all, dt."��������_���������", doc."����_������", z.����_�������,         '
               + ' m.name m_name, pt.name pt_name, st.name st_name, dt."���_��_���������",    '
               + '  dt."�������", pt.uni_name AS pt_uni_name, st.uni_name st_uni_name,       '
               + '  pt2.uni_name p2_uni_name, st2.uni_name s2_uni_name, zt.fb, zt."�������" count_zakup,'
               + '  zt."�����" dlina_zakup, zt."����" price_zakup, u.name u_name,' +
               '  u1.name u_name_zakup, ' + s +
               ' as sss,dt.id dt_id,dd1.fbb FROM "���������"."������" doc' +
               '  INNER JOIN "������������"."������������" u ON (doc."���_������������" ='
               + '  u.id)   ' +
               '  INNER JOIN "����������"."����������" m ON (doc."���_����������" = m.id)'
               + '  INNER JOIN "���������"."������_������" dt ON (doc.id = dt."���_������")'
               + '  INNER JOIN "���������"."���������" pt ON (dt."���_���������" = pt.id)'
               + '   INNER JOIN "���������"."�����" st ON (dt."���_�����" = st.id)' +
               '   left join "���������"."�������" z on (z."���_������_������" = dt.id)'
               + '  left join "���������"."�������_������" zt on (zt."���_�������" = z.id)'
               + '  left join "���������"."���������" pt2 ON (zt."���_���������" = pt2.id)'
               + '  left join "���������"."�����" st2 ON (zt."���_�����" = st2.id)' +
               ' left JOIN "������������"."������������" u1 ON (z."���_������������" = u1.id'
               + ' ) left join (select id, ���_��_���������-COALESCE(fb,0) fbb' +
               ' from (SELECT z1."���_��_���������", z1.id  FROM "���������"."������_������" z1'
               + ' ) d1 left join (SELECT sum(zd.fb) fb,  ���_������_������' +
               ' FROM "���������"."�������_������" zd' +
               ' INNER JOIN "���������"."�������" z ON (zd."���_�������" = z.id)' +
               ' INNER JOIN "���������"."������_������" zdd ON (' +
               ' z."���_������_������" = zdd.id)' + ' group by ���_������_������' +
               ') d2 on (d2.���_������_������ = d1.id)' + ') dd1 on (dd1.id = dt.id)  ' +
               ' inner join (select sum(o.fbo-COALESCE(z.fbz,0)) no_compras_mark , o.ido from'
               + ' (select sum(od."���_��_���������") fbo, od."���_������" ido' +
               ' from "���������"."������_������" od inner join "���������"."������" ' +
               ' o on (o.id=od."���_������") where o."����_������"=:d ';
    if ���_���������� <> 0 then
      sql.Add(' and o."���_����������"=' + IntToStr(���_����������));
    if ���_��������� <> 0 then
      sql.Add(' and od."���_���������"=' + IntToStr(���_���������));
    if ���_����� <> 0 then
      sql.Add(' and  od."���_�����"=' + IntToStr(���_�����));
    sql.Add(' group by od."���_������"' +
    ' ) o left join (select sum(zd.fb) fbz, zd."���_������" idz' +
    ' from "���������"."�������_������" zd group by zd."���_������"' +
    ') z on(z.idz=o.ido) group by o.ido) dd2 on (dd2.ido = doc.id),' +
    ' (select sum(o.fbo-COALESCE(z.fbz,0)) no_compras_all from' +
    ' (select sum(od."���_��_���������") fbo, od."���_������" ido' +
    ' from "���������"."������_������" od inner join "���������"."������" o on (o.id=od."���_������")'
    + ' where o."����_������"=:d ');
    if ���_���������� <> 0 then
      sql.Add(' and o."���_����������"=' + IntToStr(���_����������));
    if ���_��������� <> 0 then
      sql.Add(' and od."���_���������"=' + IntToStr(���_���������));
    if ���_����� <> 0 then
      sql.Add(' and  od."���_�����"=' + IntToStr(���_�����));
    sql.Add(' group by od."���_������") o left join' +
    ' (select sum(zd.fb) fbz, zd."���_������" idz from "���������"."�������_������" zd '
    + ' group by zd."���_������") z on(z.idz=o.ido)) dd3 where 1=1 ');
    if ���_���������� <> 0 then
      sql.Add(' and m.id=' + IntToStr(���_����������));
    if ���_��������� <> 0 then
      sql.Add(' and pt.id=' + IntToStr(���_���������));
    if ���_����� <> 0 then
      sql.Add(' and st.id=' + IntToStr(���_�����));
    if ���_������� = false then
      sql.Add(' and dd1.fbb>0');
    sql.Add(' and  doc."����_������"=:d');
    ParamByName('d').AsDate := ����_������;
    sql.Add(' order by m_name,  pt.name, st.name, zt.id');
    Open;
  end;
  if ��������_����� = true then
    CreateReport('�������')
  else
    CreateReport('�������_���_������');
end;
procedure ���������������������(���_��������� : Integer = 0);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
               'SELECT s.name s_name,  s.uni_name,  s.reg_name,  l.name l_name,' +
               '  pr.name g_name,  dc."����",  dc."���_�����",  dc."���_����"' +
               ' FROM  "�����"."�������_������" pr  INNER JOIN "�����"."����_����" cs ON (pr.id = cs."���_����")'
               + '  INNER JOIN "���������"."�����" s ON (cs."���_�����" = s.id)' +
               '  INNER JOIN "�����"."�����_����" dc ON (pr.id = dc."���_����")' +
               '  INNER JOIN "�����"."�����" l ON (l.id = dc."���_�����")';
    Open;
  end;
  CreateReport('cross_price');
end;
procedure ����������������(id_type, id_order, id_stat : Integer);
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'SELECT c.*,  s.id id_stat,  s.name status,  u.id id_manager,' +
  ' u.name user_name, c.�����, m.name mark_name  FROM ' +
  ' "�����������"."�������" c ' +
  '   INNER JOIN "�����������"."�������" s ON (c."���_�������_������" = s.id)'
  + '     LEFT OUTER JOIN "������������"."������������" u ON (c."���_������������" ='
  + '   u.id)' +
  '   left outer join "����������"."����������" m on (m."���_�������"=c.id)';
    sql.Add(' where ���_����=' + IntToStr(id_type));
    if id_stat <> 0 then
      sql.Add(' and s.id=' + IntToStr(id_stat));
    case id_order of
      1 : sql.Add(' order by name');
      2 : sql.Add(' order by status');
    end;
    Open;
  end;
  CreateReport('�����������');
end;
end.
