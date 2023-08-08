codeunit 60051 "PIN WF Response Handling1"
{
    Permissions = TableData "Sales Header" = rm,
                  TableData "Purchase Header" = rm,
                  TableData "Notification Entry" = imd,
                  TableData Customer = rm;

    procedure CheckCustomerHasOverdueCode(): Code[128]
    begin
    end;

    procedure CheckCustomerBalanceGTZeroCode(): Code[128]
    begin
    end;

    procedure RunWorkflowOnCustomerHasOverdueCode(): Code[128]
    begin
    end;

    procedure RunWorkflowOnCustomerHasNoOverdueCode(): Code[128]
    begin
    end;

    procedure RunWorkflowOnCustomerBalanceGreaterThanZeroCode(): Code[128]
    begin
    end;

    procedure RunWorkflowOnCustomerBalanceNotGreaterThanZeroCode(): Code[128]
    begin
    end;
}

codeunit 60101 GenJournalLineApproval1
{
    procedure CheckForUnAppliedPayment(var GenJournalBatch: Record "Gen. Journal Batch")
    begin
    end;

    procedure CheckForUnAppliedPayment(var GenJournalLine: Record "Gen. Journal Line")
    begin
    end;
}


codeunit 60102 "PIN Subs1"
{
}

codeunit 60103 "PIN Excel Import Buffer1"
{
    procedure SetExcelWorkSheetName(WorkSheet: Text)
    begin
    end;

    procedure ReadExcelSheet(): Text
    begin
    end;

    procedure GetRowCount(FooterRowsToIgnore: Integer): Integer
    begin
    end;

    procedure GetColumnCount(): Integer
    begin
    end;

    procedure GetTextAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
    end;

    /// <summary>
    /// GetDateAtCell.
    /// </summary>
    /// <param name="RowNo">Integer.</param>
    /// <param name="ColNo">Integer.</param>
    /// <param name="returnDate">VAR Date.</param>
    /// <returns>Return value of type Boolean.</returns>
   // [TryFunction()]
    procedure GetDateAtCell(RowNo: Integer; ColNo: Integer; var returnDate: Date): Boolean
    begin
    end;

    //  [TryFunction()]
    procedure GetDecimalAtCell(RowNo: Integer; ColNo: Integer; var returnDecimal: Decimal): Boolean
    begin
    end;

    procedure GetExcelWorksheetName(): Text
    begin
    end;
}


codeunit 60104 "PINetworks Base1"
{
    procedure isUserInTeam(Teamcode: Code[10]): Boolean
    begin
    end;

    procedure GetShortcutDimensions(DimensionSet: Integer; var dims: Code[20])
    begin
    end;

    procedure GetDimensionName(GlobalDimensionNo: Integer; DimensionCode: Code[20]): Text[50]
    begin
    end;

    procedure GetUserName(userID: Guid): Code[50]
    begin
    end;

    procedure GetFullName(userID: Guid): Text[80]
    begin
    end;

    procedure GetFullName(userID: Code[50]): Text[80]
    begin
    end;

    procedure GetSalesPersonLocation(UserId: Code[50]): Code[10]
    begin
    end;

    procedure GetSalesPersonLocation(UserId: Guid): Code[10]
    begin
    end;

    procedure getApprovelUserDetails(TableId: Integer; "Document No.": Code[20]; var CreatedUserName: Code[50]; var CreatedDateTime: DateTime; var ApprovedUserName1: Code[50]; var ApprovedDateTime1: DateTime; var ApprovedUserName2: Code[50]; var ApprovedDateTime2: DateTime)
    begin
    end;

    procedure getPriorityStyle(priority: Enum "PIN Priority1"): Text
    begin
    end;

    procedure UpdateApprovalDetails(var purchaseHeader: Record "Purchase Header")
    begin
    end;

    procedure UpdateApprovalDetails(var salesHeader: Record "Sales Header")
    begin
    end;

    procedure SalesPriceIsRestricted(): Boolean
    begin
    end;

    procedure CurrentUserCanEditSalesPrice(): Boolean
    begin
    end;

    procedure GetItemReference(itemNo: Code[20]): Text
    begin
    end;

    procedure GetExpirationDate(ItemNo: Code[20]; VariantCode: Code[10]; LotNo: Code[50]; SerialNo: Code[50]): Date
    begin
    end;

    procedure GetJournalAccountTypeFromPaymentAccountType(paymentAccountType: Enum "Payment Balance Account Type"): Enum "Gen. Journal Account Type"
    begin
    end;

    procedure GetUserDesignation(UserName: Code[50]): Text[100]
    begin
    end;

    procedure GetItemVariantCode(ItemNo: Code[20]; VariantCode: Text[50]): Text
    begin
    end;

    procedure GetVendorItemNumberByVariant(ItemNo: Code[20]; VariantCode: Text[50]): Text[50]
    begin
    end;

    procedure GenerateRowNumber(Condition: Boolean; CheckIncrement: Boolean; var PreviousLineNumber: Integer; LineNumber: Integer; var ToIncrement: Integer): Text
    begin
    end;
}

codeunit 60105 "PIN Match Bank Rec. Lines1"
{
    procedure MatchSingle(BankAccReconciliation: Record "Bank Acc. Reconciliation"; DateRange: Integer)
    begin
    end;

    procedure SetMatchLengthTreshold(NewMatchLengthThreshold: Integer)
    begin
    end;

    procedure SetNormalizingFactor(NewNormalizingFactor: Integer)
    begin
    end;
}

codeunit 60106 JobQ1
{
}

codeunit 60107 "PIN AutoTracking1"
{
    procedure SalesOrderLineReserve(var pioSalesLine: Record "Sales Line"; QtyToReserve: Decimal; QtyToReserveBase: Decimal)
    begin
    end;

    procedure WarehouseShipmentLineReserve(WarehouseShipmentLineRec: Record "Warehouse Shipment Line")
    begin
    end;
}

