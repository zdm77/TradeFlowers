program TradeFlowers;

uses
  Vcl.Forms,
  UOsn in '..\pas\UOsn.pas' {FOsn},
  UDataModule1 in '..\pas\UDataModule1.pas' {DM1: TDataModule},
  UPasswd in '..\pas\UPasswd.pas' {FPasswd},
  USplash in '..\pas\USplash.pas' {FSplash},
  UDict in '..\pas\Dictonary\UDict.pas' {FDict},
  UFrameTopPanel in '..\pas\UFrameTopPanel.pas' {FrameTopPanel: TFrame},
  PGSQL in '..\pas\PGSQL.pas',
  UFrameCountry in '..\pas\Dictonary\View\UFrameCountry.pas' {FrameCountry: TFrame},
  UFramePlant in '..\pas\Dictonary\View\UFramePlant.pas' {FramePlant: TFrame},
  UNewUniName in '..\pas\UNewUniName.pas' {FNewUniName},
  UFrameSave in '..\pas\UFrameSave.pas' {FrameSave: TFrame},
  UFrameType in '..\pas\Dictonary\View\UFrameType.pas' {FrameType: TFrame},
  UType in '..\pas\UType.pas' {FType},
  USelect in '..\pas\USelect.pas' {FSelect},
  UFrameProduct in '..\pas\Dictonary\View\UFrameProduct.pas' {FrameProduct: TFrame},
  UNewPlant in '..\pas\Dictonary\Edit\UNewPlant.pas' {FNewPlant},
  UFrameSort in '..\pas\Dictonary\View\UFrameSort.pas' {FrameSort: TFrame},
  UNewSort in '..\pas\Dictonary\Edit\UNewSort.pas' {FNewSort},
  UFrameSearch in '..\pas\UFrameSearch.pas' {FrameSearch: TFrame},
  UDialogMy in '..\pas\UDialogMy.pas',
  UFrameLength in '..\pas\Dictonary\View\UFrameLength.pas' {FrameLength: TFrame},
  ULength in '..\pas\ULength.pas' {FLength},
  UNewLength in '..\pas\Dictonary\Edit\UNewLength.pas' {FNewSortRose},
  UFuncPeoduct in '..\pas\UFuncPeoduct.pas',
  UFrameUniName in '..\pas\UFrameUniName.pas' {FrameUniName: TFrame},
  UFrameProperties in '..\pas\Dictonary\View\UFrameProperties.pas' {FrameProperties: TFrame},
  UFrameStruct in '..\pas\Dictonary\View\UFrameStruct.pas' {Frame—ÚÛÍÚÛ‡: TFrame},
  UNewProduct in '..\pas\Dictonary\Edit\UNewProduct.pas' {FNewProduct},
  UNewTTH in '..\pas\Dictonary\Edit\UNewTTH.pas' {FNewTTH},
  ULang in '..\pas\ULang.pas',
  UFrameBankRussia in '..\pas\Dictonary\View\UFrameBankRussia.pas' {FrameBank: TFrame},
  UFrameBankInter in '..\pas\Dictonary\View\UFrameBankInter.pas' {FrameBankInter: TFrame},
  UnewOrg in '..\pas\Dictonary\Edit\UnewOrg.pas' {FNewOrg},
  UFrameOrg in '..\pas\Dictonary\View\UFrameOrg.pas' {FrameOrg: TFrame},
  UFrameUsers in '..\pas\Dictonary\View\UFrameUsers.pas' {FrameUsers: TFrame},
  UNewUser in '..\pas\Dictonary\Edit\UNewUser.pas' {FNewUser},
  UAdress in '..\pas\UAdress.pas' {FAddress},
  UFrameClient in '..\pas\Dictonary\View\UFrameClient.pas' {FrameClient: TFrame},
  UNewClient in '..\pas\Dictonary\Edit\UNewClient.pas' {FNewClient},
  UFrameRole in '..\pas\Dictonary\View\UFrameRole.pas' {FrameRole: TFrame},
  UFrameKargo in '..\pas\Dictonary\View\UFrameKargo.pas' {FrameKargo: TFrame},
  UNewKargo in '..\pas\Dictonary\Edit\UNewKargo.pas' {FNewKargo},
  UNewContactKargo in '..\pas\Dictonary\Edit\UNewContactKargo.pas' {FNewContactKargo},
  UNewInAccount in '..\pas\Dictonary\Edit\UNewInAccount.pas' {FNewInAccount},
  USelectInBank in '..\pas\USelectInBank.pas' {FSelectInBank},
  UNewInBank in '..\pas\Dictonary\Edit\UNewInBank.pas' {FNewInBank},
  UFrameAirLine in '..\pas\Dictonary\View\UFrameAirLine.pas' {FrameAirLine: TFrame},
  UNewAirLine in '..\pas\Dictonary\Edit\UNewAirLine.pas' {FNewAirLine},
  UNewDaesWeek in '..\pas\Dictonary\Edit\UNewDaesWeek.pas' {FNewDaysWeek},
  UNewShedule in '..\pas\UNewShedule.pas' {FNewTimeFly},
  UNewTarifKargo in '..\pas\UNewTarifKargo.pas' {FNewTarifKargo},
  UNewContract in '..\pas\Dictonary\Edit\UNewContract.pas' {FNewContract},
  UFrameMarking in '..\pas\Dictonary\View\UFrameMarking.pas' {FrameMarking: TFrame},
  UFrameTrack in '..\pas\Dictonary\View\UFrameTrack.pas' {FrameTrack: TFrame},
  UNewTrack in '..\pas\Dictonary\Edit\UNewTrack.pas' {FNewTrack},
  UNewContactUni in '..\pas\Dictonary\Edit\UNewContactUni.pas' {FNewContactUni},
  UNewAccountRus in '..\pas\Dictonary\Edit\UNewAccountRus.pas' {FNewAccountRus},
  USelectRusBank in '..\pas\USelectRusBank.pas' {FSelectBankRus},
  UNewTarifTrack in '..\pas\UNewTarifTrack.pas' {FNewTarifTrack},
  UFramePricooling in '..\pas\UFramePricooling.pas' {FrameProcooling: TFrame},
  UNewPricooling in '..\pas\Dictonary\Edit\UNewPricooling.pas' {FNewPricooling},
  UNewGroupMarking in '..\pas\Dictonary\Edit\UNewGroupMarking.pas' {FNewGroupMarking},
  UNewMarking in '..\pas\Dictonary\Edit\UNewMarking.pas' {FNewMarking},
  UNewTarifPricooling in '..\pas\UNewTarifPricooling.pas' {FNewTarifPricooling},
  UNewPriceMarking in '..\pas\Dictonary\Edit\UNewPriceMarking.pas' {FNewPriceMarking},
  UDocs in '..\pas\UDocs.pas' {FDocs},
  UFrameOrder in '..\pas\UFrameOrder.pas' {FrameOrder: TFrame},
  UNewOrder in '..\pas\UNewOrder.pas' {FNewOrder},
  UNewOrderDetail in '..\pas\UNewOrderDetail.pas' {FNewOrderDetail},
  UFrameStanding in '..\pas\Dictonary\View\UFrameStanding.pas' {FrameStanding: TFrame},
  UNewStanding in '..\pas\Dictonary\Edit\UNewStanding.pas' {FNewStanding},
  UNewGroupProduct in '..\pas\Dictonary\Edit\UNewGroupProduct.pas' {FNewGroupProduct},
  UFramePedido in '..\pas\UFramePedido.pas' {FramePedido: TFrame},
  USelectOrder in '..\pas\USelectOrder.pas' {FSelectOrder},
  UExcel in '..\pas\UExcel.pas',
  UMultiSelect in '..\pas\UMultiSelect.pas' {FMultiSelect},
  UFrameGroupOrderDetail in '..\pas\UFrameGroupOrderDetail.pas' {FrameGroupOrderDetail: TFrame},
  UNewZakupka in '..\pas\UNewZakupka.pas' {FNewZakupka},
  UNewZakupkaDetail in '..\pas\UNewZakupkaDetail.pas' {FNewZakupkaDetail},
  ULogistic in '..\pas\ULogistic.pas' {FLogistic},
  UTimer in '..\pas\UTimer.pas',
  UFrameFactura in '..\pas\UFrameFactura.pas' {FrameFactura: TFrame},
  USelectPlant in '..\pas\USelectPlant.pas' {FSelectPlant},
  UFacturaDetail in '..\pas\UFacturaDetail.pas' {FFacturaDetail},
  UEditFacturaDetail in '..\pas\UEditFacturaDetail.pas' {FEditFacturaDetail},
  USeparate in '..\pas\USeparate.pas' {FSeparate},
  UReport in '..\pas\UReport.pas',
  UPrepReportPedido in '..\pas\UPrepReportPedido.pas' {FPrepReportPedido},
  USelectSort in '..\pas\USelectSort.pas' {FSelectSort},
  UFramePriceLength in '..\pas\UFramePriceLength.pas' {FramePriceLength: TFrame},
  UNewPriceLength in '..\pas\Dictonary\Edit\UNewPriceLength.pas' {FNewPriceLength},
  UNewVal in '..\pas\Dictonary\Edit\UNewVal.pas' {FAddValue},
  UFrameWarehouse in '..\pas\Dictonary\View\UFrameWarehouse.pas' {FrameWarehouse: TFrame},
  UNewOrgName in '..\pas\Dictonary\Edit\UNewOrgName.pas' {FNewOrgName},
  UNewWarehouse in '..\pas\Dictonary\Edit\UNewWarehouse.pas' {FNewWarehouse},
  UNewStoreloc in '..\pas\Dictonary\Edit\UNewStoreloc.pas' {FNewStoreloc},
  UFramePlantSort in '..\pas\UFramePlantSort.pas' {FramePlantSort: TFrame},
  UStandartReport in '..\pas\UStandartReport.pas' {FStandartReport},
  UFrameFito in '..\pas\Dictonary\View\UFrameFito.pas' {FrameFITO: TFrame},
  UReportClients in '..\pas\UReportClients.pas' {FReportClients},
  UFCountry in '..\pas\UFCountry.pas' {FCountry},
  UFTypeStruct in '..\pas\UFTypeStruct.pas' {FTypeStruct},
  UFProperties in '..\pas\UFProperties.pas' {FProperties},
  UFPlant in '..\pas\UFPlant.pas' {FPlant},
  UFSort in '..\pas\UFSort.pas' {FSort},
  USync in '..\pas\USync.pas' {FSync},
  USelectSortInPlant in '..\pas\USelectSortInPlant.pas' {FSelectSortInPlant},
  tamog_packing in '..\pas\tamog_packing.pas' {Tamog_Packing: TFrame},
  UNewPacking in '..\pas\UNewPacking.pas' {FNewPacking},
  UNewAvtoForPacking in '..\pas\UNewAvtoForPacking.pas' {FNewAvtoForPacking},
  UNewSubPacking in '..\pas\UNewSubPacking.pas' {FNewSubPacking},
  UNewBoxForPacking in '..\pas\Dictonary\Edit\UNewBoxForPacking.pas' {FNewBoxForPacking},
  UNewBoxForPackingDetail in '..\pas\UNewBoxForPackingDetail.pas' {FNewBoxForPackingDetail},
  UDetailBoxPacking in '..\pas\UDetailBoxPacking.pas' {FDetailBoxPacking},
  UPackingCorrection in '..\pas\UPackingCorrection.pas' {FPackingCorrection},
  UFrameTypeLengthWeight in '..\pas\Dictonary\View\UFrameTypeLengthWeight.pas' {FrameTypeLengthWeight: TFrame},
  UNewTypeLengthWeight in '..\pas\Dictonary\Edit\UNewTypeLengthWeight.pas' {FNewTypeLengthWeight},
  UNewCorrectPacking in '..\pas\UNewCorrectPacking.pas' {FNewCorrectPacking},
  UFrameBox in '..\pas\Dictonary\View\UFrameBox.pas' {FrameBox: TFrame},
  UNewBox in '..\pas\Dictonary\Edit\UNewBox.pas' {FNewBox},
  UBuh in '..\pas\Buh\UBuh.pas' {FBuh},
  UFrameAWB in '..\pas\Buh\UFrameAWB.pas' {FrameAWB: TFrame},
  USubAWB in '..\pas\USubAWB.pas' {FSubAWB},
  UNewAWB in '..\pas\Buh\Control\UNewAWB.pas' {FNewAWB},
  UNewSubAWBDetail in '..\pas\UNewSubAWBDetail.pas' {FNewSubAWBDetail},
  UFrameBalance in '..\pas\Buh\UFrameBalance.pas' {FrameBalance: TFrame},
  UFacturPlant in '..\pas\UFacturPlant.pas' {FFacturPlant},
  UFEditFact in '..\pas\UFEditFact.pas' {FEditFact},
  UNewOpl in '..\pas\UNewOpl.pas' {FNewOpl},
  UBalanceKargo in '..\pas\Buh\UBalanceKargo.pas' {FrameBalanceKargo: TFrame},
  UFacturKargo in '..\pas\UFacturKargo.pas' {FFacturKargo},
  UEditFactKargo in '..\pas\UEditFactKargo.pas' {FEditFactKargo},
  UFrameAccess in '..\pas\Dictonary\View\UFrameAccess.pas' {FrameAccess: TFrame},
  UParamPC in '..\pas\UParamPC.pas' {FParamPC},
  UFProduct in '..\pas\UFProduct.pas' {FProduct},
  UFClient in '..\pas\UFClient.pas' {FClient},
  UTypeLengthWeight in '..\pas\UTypeLengthWeight.pas' {FTypeLengthWeight},
  UFBox in '..\pas\UFBox.pas' {FBox},
  UFMarking in '..\pas\UFMarking.pas' {FMarking},
  UFAirLines in '..\pas\UFAirLines.pas' {FAirLines},
  UFKargo in '..\pas\UFKargo.pas' {FKargo},
  UFTrack in '..\pas\UFTrack.pas' {FTrack},
  UFPricooling in '..\pas\UFPricooling.pas' {FPricooling},
  UFFITO in '..\pas\UFFITO.pas' {FFITO},
  UFStanding in '..\pas\UFStanding.pas' {FStanding},
  UFOrg in '..\pas\UFOrg.pas' {FOrg},
  UFPrice in '..\pas\UFPrice.pas' {FPrice},
  UFWareHouse in '..\pas\UFWareHouse.pas' {FWareHouse},
  UNewFB in '..\pas\UNewFB.pas' {FNewFB},
  UFramePritenz in '..\pas\Buh\UFramePritenz.pas' {FramePritenz: TFrame},
  UFEditPitenz in '..\pas\Buh\Control\UFEditPitenz.pas' {FEditPritenz},
  UFrameOplataPlant in '..\pas\Buh\UFrameOplataPlant.pas' {FrameOplataPlant: TFrame},
  UNewOplatPlant in '..\pas\Buh\Control\UNewOplatPlant.pas' {FNewOplatPlant},
  UBackUp in '..\pas\UBackUp.pas' {BackUp},
  UFrameStatFacturPlant in '..\pas\Buh\UFrameStatFacturPlant.pas' {FrameStatFacturPlant: TFrame},
  UFramePretenzEdit in '..\pas\UFramePretenzEdit.pas' {FramePretenzEdit: TFrame},
  UNewPretenzDetail in '..\pas\UNewPretenzDetail.pas' {FNewPretenzDetail},
  UFAwb in '..\pas\UFAwb.pas' {FAWB},
  UBuhBalancePlant in '..\pas\UBuhBalancePlant.pas' {FBuhBalancePlant},
  USelLang in '..\pas\USelLang.pas' {FSelLang},
  UNewZakupDetailQuick in '..\pas\UNewZakupDetailQuick.pas' {FNewZakupDetailQuick},
  UFrameTypeClient in '..\pas\Dictonary\View\UFrameTypeClient.pas' {FrameTypeClient: TFrame},
  UNewTypeClient in '..\pas\Dictonary\Edit\UNewTypeClient.pas' {FNewTypeClient},
  UFrameAWBPedido in '..\pas\UFrameAWBPedido.pas' {FrameAWBPedido: TFrame},
  UNewPeduidoAWB in '..\pas\UNewPeduidoAWB.pas' {FNewPeduidoAWB},
  UAWBPedido in '..\pas\UAWBPedido.pas' {FAWBPedido},
  UNewPedidoAWBDetail in '..\pas\UNewPedidoAWBDetail.pas' {FNewPedidoAWBDetail},
  UFramePedidoALL in '..\pas\UFramePedidoALL.pas' {FramePedidoAll: TFrame},
  UPedido in '..\pas\UPedido.pas' {FPedido},
  UFramePrikulingBuh in '..\pas\Buh\UFramePrikulingBuh.pas' {FramePrikulingBuh: TFrame},
  UFrameProductNew in '..\pas\Dictonary\View\UFrameProductNew.pas' {FrameProductNew: TFrame},
  UFImport in '..\pas\UFImport.pas' {FImport},
  UFramePrice in '..\pas\UFramePrice.pas' {FramePrice: TFrame},
  UFramePriceDetail in '..\pas\UFramePriceDetail.pas' {FramePriceDetail: TFrame},
  UPriceDetail in '..\pas\UPriceDetail.pas' {FPriceDetail},
  UFQuestionSort in '..\pas\UFQuestionSort.pas' {FQuestionSort},
  UFrameReceipt in '..\pas\Dictonary\View\UFrameReceipt.pas' {FrameReceipt: TFrame},
  UFrameNewReceipt in '..\pas\Dictonary\View\UFrameNewReceipt.pas' {FrameNewReceipt: TFrame},
  UNewReceipt in '..\pas\Dictonary\Edit\UNewReceipt.pas' {FNewReceipt},
  UAuction in '..\pas\Auction\UAuction.pas' {FAuction},
  UFrameAuction in '..\pas\Auction\UFrameAuction.pas' {FrameAuction: TFrame},
  UNewAuction in '..\pas\Auction\UNewAuction.pas' {fNewAuction},
  UNewPlantCountry in '..\pas\Dictonary\Edit\UNewPlantCountry.pas' {fNewPlantCountry},
  UTypeSort in '..\pas\UTypeSort.pas' {fTypeSort},
  UAuctionDetail in '..\pas\Auction\UAuctionDetail.pas' {fAuctionDetail},
  UFrameRaznosAuc in '..\pas\Auction\UFrameRaznosAuc.pas' {FrameRaznosAuc: TFrame},
  UFrameRaznosAucAll in '..\pas\Auction\UFrameRaznosAucAll.pas' {FrameRaznosAucAll: TFrame},
  URaznosAuc in '..\pas\Auction\URaznosAuc.pas' {fRaznosAuc},
  UTypeAuc in '..\pas\Auction\UTypeAuc.pas' {FrameTypeAuc: TFrame},
  UFrameProductAuc in '..\pas\Auction\UFrameProductAuc.pas' {FrameProductAuc: TFrame},
  UNewTypeAuc in '..\pas\Auction\UNewTypeAuc.pas' {fNewTypeAuc},
  UNewProductAuc in '..\pas\Auction\UNewProductAuc.pas' {fNewProductAuc},
  UEditProductAuc in '..\pas\Auction\UEditProductAuc.pas' {FEditProductAuc},
  UNewPriceProdAuc in '..\pas\Auction\UNewPriceProdAuc.pas' {FNewPriceProdAuc},
  UNewCountry in '..\pas\Dictonary\Edit\UNewCountry.pas' {FNewCountry},
  USelectTypeAuc in '..\pas\Auction\USelectTypeAuc.pas' {FSelectTypeAuc},
  UAucImage in '..\pas\Auction\UAucImage.pas' {FAucImage},
  UNewOrderAuc in '..\pas\Auction\UNewOrderAuc.pas' {FNewOrderAuc},
  UAucZakup in '..\pas\Auction\UAucZakup.pas' {FAucZakup},
  ULogin in '..\pas\ULogin.pas' {FLogin},
  USelectClient in '..\pas\USelectClient.pas' {FSelectClient},
  UFrameAucOrder in '..\pas\Auction\Orders\UFrameAucOrder.pas' {FrameAucOrder: TFrame},
  UfNewAucOrderBody in '..\pas\Auction\Orders\UfNewAucOrderBody.pas' {fNewAucOrderBody},
  UfNewAucOrder in '..\pas\Auction\Orders\UfNewAucOrder.pas' {fNewAucOrder},
  UChat in '..\pas\Chat\UChat.pas' {FChat},
  UChatDb in '..\pas\Chat\UChatDb.pas' {FChatDB},
  ProductClass in '..\pas\ProductClass.pas',
  UNewOrderFromChat in '..\pas\Orders\UNewOrderFromChat.pas' {FNewOrderFromChat},
  USelectProduct in '..\pas\USelectProduct.pas' {FSelectProduct},
  UMarkingClass in '..\pas\Classes\UMarkingClass.pas',
  UOrderClass in '..\pas\Classes\UOrderClass.pas',
  UNewPedido in '..\pas\Orders\UNewPedido.pas' {FNewPedido},
  UNewPedidoPosition in '..\pas\Orders\UNewPedidoPosition.pas' {FNewPedidoPosition},
  UFParamPosPedido in '..\pas\Orders\UFParamPosPedido.pas' {FParamPosPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFOsn, FOsn);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFPasswd, FPasswd);
  Application.CreateForm(TFSync, FSync);
  Application.CreateForm(TFSplash, FSplash);
 // Application.CreateForm(TFParamPosPedido, FParamPosPedido);
  // Application.CreateForm(TFNewPedido, FNewPedido);
  //Application.CreateForm(TFNewPedidoPosition, FNewPedidoPosition);
  //Application.CreateForm(TFSelectProduct, FSelectProduct);
  // Application.CreateForm(TFNewOrderFromChat, FNewOrderFromChat);
  ///Application.CreateForm(TFChatDB, FChatDB);
  // Application.CreateForm(TFChat, FChat);
  // Application.CreateForm(TfNewAucOrder, fNewAucOrder);
  // Application.CreateForm(TfNewAucOrder, fNewAucOrder);
  // Application.CreateForm(TFSelectClient, FSelectClient);
  //
  // Application.CreateForm(TFAucZakup, FAucZakup);
  // Application.CreateForm(TFNewOrderAuc, FNewOrderAuc);
  // Application.CreateForm(TFAucImage, FAucImage);
  // Application.CreateForm(TFSelectTypeAuc, FSelectTypeAuc);
  // Application.CreateForm(TFNewCountry, FNewCountry);
  // Application.CreateForm(TFEditProductAuc, FEditProductAuc);
  // Application.CreateForm(TFNewPriceProdAuc, FNewPriceProdAuc);
  // Application.CreateForm(TfNewProductAuc, fNewProductAuc);
  // Application.CreateForm(TfNewTypeAuc, fNewTypeAuc);
  // Application.CreateForm(TfRaznosAuc, fRaznosAuc);
  // Application.CreateForm(TfAuctionDetail, fAuctionDetail);
  // Application.CreateForm(TfTypeSort, fTypeSort);
  // Application.CreateForm(TfNewPlantCountry, fNewPlantCountry);
  // Application.CreateForm(TFNewReceipt, FNewReceipt);
  // Application.CreateForm(TfNewAuction, fNewAuction);
  // Application.CreateForm(TFAuction, FAuction);
  // Application.CreateForm(TFImport, FImport);
  // Application.CreateForm(TFQuestionSort, FQuestionSort);
  // Application.CreateForm(TFPriceDetail, FPriceDetail);
  // Application.CreateForm(TFPedido, FPedido);
  // Application.CreateForm(TFNewPedidoAWBDetail, FNewPedidoAWBDetail);
  // Application.CreateForm(TFAWBPedido, FAWBPedido);
  // Application.CreateForm(TFNewPeduidoAWB, FNewPeduidoAWB);
  // Application.CreateForm(TFNewTypeClient, FNewTypeClient);
  // Application.CreateForm(TFNewZakupDetailQuick, FNewZakupDetailQuick);
  // Application.CreateForm(TFSelLang, FSelLang);
  // Application.CreateForm(TFBuhBalancePlant, FBuhBalancePlant);
  // Application.CreateForm(TFAWB, FAWB);
  // Application.CreateForm(TFNewPretenzDetail, FNewPretenzDetail);
  // Application.CreateForm(TBackUp, BackUp);
  // Application.CreateForm(TFNewOplatPlant, FNewOplatPlant);
  // Application.CreateForm(TFEditPritenz, FEditPritenz);
  // Application.CreateForm(TFNewFB, FNewFB);
  // Application.CreateForm(TFWareHouse, FWareHouse);
  // Application.CreateForm(TFPrice, FPrice);
  // Application.CreateForm(TFOrg, FOrg);
  // Application.CreateForm(TFStanding, FStanding);
  // Application.CreateForm(TFFITO, FFITO);
  // Application.CreateForm(TFPricooling, FPricooling);
  // Application.CreateForm(TFTrack, FTrack);
  // Application.CreateForm(TFKargo, FKargo);
  // Application.CreateForm(TFAirLines, FAirLines);
  // Application.CreateForm(TFMarking, FMarking);
  // Application.CreateForm(TFÃ‡ÍËÓ‚ÍË, FÃ‡ÍËÓ‚ÍË);
  // Application.CreateForm(TFBox, FBox);
  // Application.CreateForm(TFTypeLengthWeight, FTypeLengthWeight);
  // Application.CreateForm(TFClient, FClient);
  // Application.CreateForm(TFProduct, FProduct);
  // Application.CreateForm(TFParamPC, FParamPC);
  // Application.CreateForm(TFEditFactKargo, FEditFactKargo);
  // Application.CreateForm(TFFacturKargo, FFacturKargo);
  // Application.CreateForm(TFNewOpl, FNewOpl);
  // Application.CreateForm(TFEditFact, FEditFact);
  // Application.CreateForm(TFFacturPlant, FFacturPlant);
  // ------------------¡”’√¿À“≈–»ﬂ-------------------//
  // Application.CreateForm(TFBuh, FBuh);
  // Application.CreateForm(TFNewAWB, FNewAWB);
  // Application.CreateForm(TFSubAWB, FSubAWB);
  // Application.CreateForm(TFNewSubAWBDetail, FNewSubAWBDetail);
  // ------------------ ŒÕ≈÷ ¡”’√¿À“≈–»ﬂ-------------------//
  // Application.CreateForm(TFNewBox, FNewBox);
  // Application.CreateForm(TFNewCorrectPacking, FNewCorrectPacking);
  // Application.CreateForm(TFPackingCorrection, FPackingCorrection);
  // Application.CreateForm(TFNewTypeLengthWeight, FNewTypeLengthWeight);
  // Application.CreateForm(TFSelectClient, FSelectClient);
  // ----------œ¿ »Õ√--------------------//
  // Application.CreateForm(TFNewAvtoForPacking, FNewAvtoForPacking);
  // Application.CreateForm(TFNewPacking, FNewPacking);
  // Application.CreateForm(TFNewSubPacking, FNewSubPacking);
  // Application.CreateForm(TFNewBoxForPacking, FNewBoxForPacking);
  // Application.CreateForm(TFNewBoxForPackingDetail, FNewBoxForPackingDetail);
  // Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
  // ---------- ŒÕ≈÷ œ¿ »Õ√--------------------//
  // Application.CreateForm(TFSelectSortInPlant, FSelectSortInPlant);
  // Application.CreateForm(TFSort, FSort);
  // Application.CreateForm(TFPlant, FPlant);
  // Application.CreateForm(TFProperties, FProperties);
  // Application.CreateForm(TFTypeStruct, FTypeStruct);
  // Application.CreateForm(TFCountry, FCountry);
  // Application.CreateForm(TFStandartReport, FStandartReport);
  // Application.CreateForm(TFReportClients, FReportClients);
  // Application.CreateForm(TFNewWarehouse, FNewWarehouse);
  // Application.CreateForm(TFNewStoreloc, FNewStoreloc);
  // Application.CreateForm(TFNewOrgName, FNewOrgName);
  // Application.CreateForm(TFNewPriceLength, FNewPriceLength);
  // Application.CreateForm(TFAddValue, FAddValue);
  // Application.CreateForm(TFSelectSort, FSelectSort);
  // Application.CreateForm(TFSeparate, FSeparate);
  // Application.CreateForm(TFPrepReportPedido, FPrepReportPedido);
  // Application.CreateForm(TFEditFacturaDetail, FEditFacturaDetail);
  // Application.CreateForm(TFFacturaDetail, FFacturaDetail);
  // Application.CreateForm(TFLogistic, FLogistic);
  // Application.CreateForm(TFSelectPlant, FSelectPlant);
  // Application.CreateForm(TFNewZakupka, FNewZakupka);
  // Application.CreateForm(TFNewZakupkaDetail, FNewZakupkaDetail);
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // Application.CreateForm(TFSelectOrder, FSelectOrder);
  // Application.CreateForm(TFNewOrderDetail, FNewOrderDetail);
  // Application.CreateForm(TFNewGroupProduct, FNewGroupProduct);
  // Application.CreateForm(TFNewStanding, FNewStanding);
  // Application.CreateForm(TFNewOrder, FNewOrder);
  // Application.CreateForm(TFDocs, FDocs);
  // Application.CreateForm(TFNewPriceMarking, FNewPriceMarking);
  // Application.CreateForm(TFNewTarifPricooling, FNewTarifPricooling);
  // Application.CreateForm(TFNewMarking, FNewMarking);
  // Application.CreateForm(TFNewGroupMarking, FNewGroupMarking);
  // Application.CreateForm(TFNewTarifTrack, FNewTarifTrack);
  // Application.CreateForm(TFNewPricooling, FNewPricooling);
  // Application.CreateForm(TFSelectBankRus, FSelectBankRus);
  // Application.CreateForm(TFNewAccountRus, FNewAccountRus);
  // Application.CreateForm(TFNewContactUni, FNewContactUni);
  // Application.CreateForm(TFNewTrack, FNewTrack);
  // Application.CreateForm(TFNewContract, FNewContract);
  // Application.CreateForm(TFNewTarifKargo, FNewTarifKargo);
  // Application.CreateForm(TFNewTimeFly, FNewTimeFly);
  // Application.CreateForm(TFNewDaysWeek, FNewDaysWeek);
  // Application.CreateForm(TFNewAirLine, FNewAirLine);
  // Application.CreateForm(TFNewInBank, FNewInBank);
  // Application.CreateForm(TFSelectInBank, FSelectInBank);
  // Application.CreateForm(TFNewInAccount, FNewInAccount);
  // Application.CreateForm(TFNewContactKargo, FNewContactKargo);
  // Application.CreateForm(TFNewKargo, FNewKargo);
  // Application.CreateForm(TFNewUser, FNewUser);
  // Application.CreateForm(TFAddress, FAddress);
  // Application.CreateForm(TFNewClient, FNewClient);
  // Application.CreateForm(TFNewOrg, FNewOrg);
  // Application.CreateForm(TFNewTTH, FNewTTH);
  // Application.CreateForm(TFNewProperties, FNewProperties);
  // Application.CreateForm(TFNewProduct, FNewProduct);
  // Application.CreateForm(TFNewSortRose, FNewSortRose);
  // Application.CreateForm(TFLength, FLength);
  // Application.CreateForm(TFNewSort, FNewSort);
  // Application.CreateForm(TFNewPlant, FNewPlant);
  // Application.CreateForm(TFType, FType);
  // Application.CreateForm(TFSelect, FSelect);
  // Application.CreateForm(TFNewUniName, FNewUniName);
  // Application.CreateForm(TFDict, FDict);
  FLogin.ShowModal;
  // FPasswd.ShowModal;
  Application.Run;

end.
