CLASS lhc_accountheader DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_authorizations FOR AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR accountheader RESULT result.

ENDCLASS.

CLASS lhc_accountheader IMPLEMENTATION.

  METHOD get_authorizations.
  ENDMETHOD.

ENDCLASS.

