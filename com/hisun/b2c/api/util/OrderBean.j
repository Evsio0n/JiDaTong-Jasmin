.bytecode 50.0
.class public synchronized com/hisun/b2c/api/util/OrderBean
.super java/lang/Object

.field private 'acDate' Ljava/lang/String;

.field private 'ccy' Ljava/lang/String;

.field private 'character' Ljava/lang/String;

.field private 'cmpayOrderId' Ljava/lang/String;

.field private 'couponsFlag' Ljava/lang/String;

.field private 'itfVer' Ljava/lang/String;

.field private 'merName' Ljava/lang/String;

.field private 'mercPubKey' Ljava/lang/String;

.field private 'notifyUrl' Ljava/lang/String;

.field private 'orderDate' Ljava/lang/String;

.field private 'orderNo' Ljava/lang/String;

.field private 'orderType' Ljava/lang/String;

.field private 'partner' Ljava/lang/String;

.field private 'period' Ljava/lang/String;

.field private 'periodUnit' Ljava/lang/String;

.field private 'proDesc' Ljava/lang/String;

.field private 'proId' Ljava/lang/String;

.field private 'proName' Ljava/lang/String;

.field private 'proNum' Ljava/lang/String;

.field private 'requestId' Ljava/lang/String;

.field private 'rsvfld1' Ljava/lang/String;

.field private 'rsvfld2' Ljava/lang/String;

.field private 'sign' Ljava/lang/String;

.field private 'signType' Ljava/lang/String;

.field private 'txnAmt' Ljava/lang/String;

.field private 'type' Ljava/lang/String;

.field private 'userToken' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "00"
putfield com/hisun/b2c/api/util/OrderBean/couponsFlag Ljava/lang/String;
aload 0
ldc "Rs2"
putfield com/hisun/b2c/api/util/OrderBean/rsvfld2 Ljava/lang/String;
aload 0
ldc "Rs1"
putfield com/hisun/b2c/api/util/OrderBean/rsvfld1 Ljava/lang/String;
aload 0
ldc "24"
putfield com/hisun/b2c/api/util/OrderBean/period Ljava/lang/String;
aload 0
ldc "00"
putfield com/hisun/b2c/api/util/OrderBean/periodUnit Ljava/lang/String;
aload 0
ldc "00"
putfield com/hisun/b2c/api/util/OrderBean/ccy Ljava/lang/String;
aload 0
ldc "2.0.0"
putfield com/hisun/b2c/api/util/OrderBean/itfVer Ljava/lang/String;
aload 0
ldc "CASDirectPayConfirm"
putfield com/hisun/b2c/api/util/OrderBean/type Ljava/lang/String;
aload 0
ldc "MD5"
putfield com/hisun/b2c/api/util/OrderBean/signType Ljava/lang/String;
aload 0
ldc "00"
putfield com/hisun/b2c/api/util/OrderBean/character Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 2
ifnull L0
aload 1
ifnull L0
new java/lang/StringBuilder
dup
ldc "<"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "</"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ">"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public getAcDate()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/acDate Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCcy()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/ccy Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCharacter()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/character Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCmpayOrderId()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/cmpayOrderId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCouponsFlag()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/couponsFlag Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItfVer()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/itfVer Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMerName()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/merName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMercPubKey()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/mercPubKey Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
aload 1
astore 2
aload 1
ifnonnull L0
ldc ""
astore 2
L0:
aload 2
areturn
.limit locals 3
.limit stack 1
.end method

.method public getNotifyUrl()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/notifyUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOrderDate()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderDate Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOrderNo()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderNo Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOrderType()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPartner()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/partner Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPeriod()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/period Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPeriodUnit()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/periodUnit Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProDesc()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proDesc Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProId()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProName()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getProNum()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proNum Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRequestId()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/requestId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRsvfld1()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld1 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRsvfld2()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld2 Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSign()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/sign Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSignStr()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/character Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/notifyUrl Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/partner Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/requestId Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/signType Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/type Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/itfVer Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/txnAmt Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/ccy Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderDate Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderNo Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/acDate Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/period Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/periodUnit Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proDesc Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proId Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proName Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proNum Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld1 Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld2 Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/userToken Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/couponsFlag Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/mercPubKey Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/cmpayOrderId Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/merName Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderType Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/getNotNullStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getSignType()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/signType Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSignedXml()Ljava/lang/String;
new java/lang/StringBuffer
dup
ldc "<ORDER>"
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 1
aload 1
aload 0
ldc "CHARACTER"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/character Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "NOTIFYURL"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/notifyUrl Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "PARTNER"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/partner Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "REQUESTID"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/requestId Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "SIGNTYPE"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/signType Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "TYPE"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/type Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "ITFVER"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/itfVer Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "TXNAMT"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/txnAmt Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "CCY"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/ccy Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "ORDDT"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderDate Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "ORDNO"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderNo Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "ACDT"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/acDate Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "PERIOD"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/period Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "PERIODUNIT"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/periodUnit Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "PRODESC"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proDesc Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "PROID"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proId Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "PRONAME"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proName Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "PRONUM"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proNum Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "RSVFLD1"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld1 Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "RSVFLD2"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld2 Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "USRTOKEN"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/userToken Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "COUPONSFLAG"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/couponsFlag Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "MERCPUBKEY"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/mercPubKey Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "SIGN"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/sign Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "CMPAYORDERID"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/cmpayOrderId Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "MERNAME"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/merName Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
aload 0
ldc "ORDTYP"
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderType Ljava/lang/String;
invokevirtual com/hisun/b2c/api/util/OrderBean/buildNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "</ORDER>"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getTxnAmt()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/txnAmt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/type Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserToken()Ljava/lang/String;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/userToken Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAcDate(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/acDate Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCcy(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/ccy Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCharacter(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/character Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCmpayOrderId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/cmpayOrderId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCouponsFlag(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/couponsFlag Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setItfVer(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/itfVer Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMerName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/merName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMercPubKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/mercPubKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setNotifyUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/notifyUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrderDate(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/orderDate Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrderNo(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/orderNo Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrderType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/orderType Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPartner(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/partner Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPeriod(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/period Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setPeriodUnit(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/periodUnit Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProDesc(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/proDesc Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/proId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/proName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setProNum(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/proNum Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRequestId(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/requestId Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRsvfld1(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/rsvfld1 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRsvfld2(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/rsvfld2 Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSign(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/sign Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSignType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/signType Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTxnAmt(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/txnAmt Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/type Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserToken(Ljava/lang/String;)V
aload 0
aload 1
putfield com/hisun/b2c/api/util/OrderBean/userToken Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "OrderBean [sign="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/hisun/b2c/api/util/OrderBean/sign Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", mercPubKey="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/mercPubKey Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", couponsFlag="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/couponsFlag Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", userToken="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/userToken Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", rsvfld2="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld2 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", rsvfld1="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/rsvfld1 Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", proNum="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proNum Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", proName="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", proId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", proDesc="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/proDesc Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", period="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/period Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", periodUnit="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/periodUnit Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", acDate="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/acDate Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", orderNo="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderNo Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", orderDate="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderDate Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", ccy="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/ccy Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", txnAmt="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/txnAmt Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", itfVer="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/itfVer Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/type Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", signType="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/signType Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", requestId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/requestId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", character="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/character Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", notifyUrl="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/notifyUrl Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", partner="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/partner Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", cmpayOrderId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/cmpayOrderId Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", merName="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/merName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", orderType="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/hisun/b2c/api/util/OrderBean/orderType Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
