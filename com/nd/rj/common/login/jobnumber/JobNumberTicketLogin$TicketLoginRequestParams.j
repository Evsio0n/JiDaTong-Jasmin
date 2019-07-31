.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginRequestParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert
.inner class public static TicketLoginRequestParams inner com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginRequestParams outer com/nd/rj/common/login/jobnumber/JobNumberTicketLogin

.field public 'mBlowfish' Ljava/lang/String;

.field public 'mTicket' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doConvert()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "blowfish"
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginRequestParams/mBlowfish Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "ticket"
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginRequestParams/mTicket Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
L2:
astore 2
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginRequestParams/mBlowfish Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginRequestParams/mTicket Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
