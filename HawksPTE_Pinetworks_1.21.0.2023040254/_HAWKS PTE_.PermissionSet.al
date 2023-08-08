permissionset 50150 "HAWKS PTE"
{
    Assignable = true;
    Caption = 'Admin', MaxLength = 30;
    Permissions = table HawksCueTable=X,
        tabledata HawksCueTable=RMID,
        table "HKS CP User"=X,
        tabledata "HKS CP User"=RMID,
        codeunit DelivaryAppCodeUnit=X,
        codeunit SalesConfEmailAttach=X,
        codeunit "Whse.-Post Shipment-PrintOnly"=X,
        codeunit "PINPTE Upd. Cust. Credit Limit"=X,
        codeunit "PIN rmsxml"=X,
        codeunit Utils=X,
        codeunit "Incom. Doc. to SharePoint-JOBQ"=X,
        page "Purchase Line Details"=X,
        page "HKSPTE Delivery Wizard"=X,
        page HawksCuePage=X,
        page "HKSPTE Delivery Device"=X,
        page "HKS CP Users"=X,
        page "HKS CP User Card"=X,
        query PaymentsLinkedToInvoice=X,
        query "PIN Whse Shipments - Sales Inv"=X,
        query "Sales Invoice Details"=X,
        report "PIN Purchase Details"=X,
        report "PIN Posted Payment Recon"=X,
        report "PIN Purch. Details Report"=X,
        report "HKSPTE Delivery Note"=X,
        report "PIN Customer Item Sales"=X,
        report "PINPTE Std Sales - Invoice"=X;
}
