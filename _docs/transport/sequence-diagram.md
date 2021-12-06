
```sequence 

Your Application\nCore Code->LedgerJS\nTransport Lib: Transport creation\nrequest
LedgerJS\nTransport Lib->Ledger Device\nSoftware: Request connection
Ledger Device\nSoftware->Ledger Device\nSoftware: Approve connection

Ledger Device\nSoftware-->LedgerJS\nTransport Lib: Approved connection
LedgerJS\nTransport Lib-->Your Application\nCore Code: Transport created

Your Application\nCore Code->LedgerJS Dedicated\nApp Lib: Create Instance
LedgerJS Dedicated\nApp Lib-->Your Application\nCore Code : Instance created


Your Application\nCore Code->LedgerJS Dedicated\nApp Lib: Call Dedicated Lib Method
LedgerJS Dedicated\nApp Lib->LedgerJS Dedicated\nApp Lib: Create ADPU Request
LedgerJS Dedicated\nApp Lib->LedgerJS\nTransport Lib : Send ADPU Request
LedgerJS\nTransport Lib->Ledger Device\nSoftware: Transport ADPU Request
Ledger Device\nSoftware->Nano Apps: Route ADPU Request
Nano Apps->Nano Apps: Approve\nRequest

Nano Apps-->Ledger Device\nSoftware: Create ADPU Response
Ledger Device\nSoftware-->LedgerJS\nTransport Lib: Receive ADPU Response


LedgerJS\nTransport Lib-->LedgerJS Dedicated\nApp Lib: Receive ADPU Response
LedgerJS Dedicated\nApp Lib->LedgerJS Dedicated\nApp Lib: Translate\nADPU Response\nto Method Response
LedgerJS Dedicated\nApp Lib-->Your Application\nCore Code: Receive Method Response
Your Application\nCore Code->Your Application\nCore Code: Process Method Response

``` 