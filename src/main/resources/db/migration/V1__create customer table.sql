CREATE TABLE CUSTOMER
  (
    id                                                                                    int                identity,
    creaon_date                                                                           datetime2                  ,
    name                                                                                  varchar( 100 )             ,
    CONSTRAINT PK_CUSTOMER PRIMARY KEY( id )
  )