.bytecode 50.0
.class synchronized com/bestpay/plugin/Plugin$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/bestpay/plugin/Plugin/pay(Landroid/content/Context;Ljava/util/Hashtable;)V
.inner class inner com/bestpay/plugin/Plugin$4

.field private final synthetic 'val$context' Landroid/content/Context;

.field private final synthetic 'val$params' Ljava/util/Hashtable;

.method <init>(Ljava/util/Hashtable;Landroid/content/Context;)V
aload 0
aload 1
putfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
aload 0
aload 2
putfield com/bestpay/plugin/Plugin$4/val$context Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 7
aload 7
ldc "MERCHANTID"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "MERCHANTID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "SUBMERCHANTID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 7
ldc "SUBMERCHANTID"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L7:
aload 7
ldc "BUSITYPE"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "BUSITYPE"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "MAC"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "MAC"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "MERCHANTPWD"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "MERCHANTPWD"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "ORDERSEQ"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ORDERSEQ"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "ORDERREQTRANSEQ"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ORDERREQTRANSEQ"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "ORDERTIME"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ORDERTIME"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "ORDERVALIDITYTIME"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ORDERVALIDITYTIME"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "PRODUCTDESC"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "PRODUCTDESC"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "SDKVERSIONCODE"
iconst_1
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 7
ldc "SESSIONKEY"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "SESSIONKEY"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "OTHERFLOW"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
aload 7
ldc "OTHERFLOW"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L9:
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "CUSTOMERID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
aload 7
ldc "CUSTOMERID"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L11:
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "PRODUCTAMOUNT"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
aload 7
ldc "PRODUCTAMOUNT"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L13:
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ATTACHAMOUNT"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L14
aload 7
ldc "ATTACHAMOUNT"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L15:
aload 7
ldc "CURTYPE"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "CURTYPE"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "BACKMERCHANTURL"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "BACKMERCHANTURL"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ATTACH"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L16
aload 7
ldc "ATTACH"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L17:
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "PRODUCTID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L18
aload 7
ldc "PRODUCTID"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L19:
aload 7
ldc "USERIP"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "USERIP"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "DIVDETAILS"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L20
aload 7
ldc "DIVDETAILS"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L21:
aload 7
ldc "ACCOUNTID"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ACCOUNTID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 7
ldc "KEY"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "KEY"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "USERACCOUNT"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L22
aload 7
ldc "USERACCOUNT"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L23:
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "MERCHANTPHONE"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L24
aload 7
ldc "MERCHANTPHONE"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L25:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 8
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ORDERAMOUNT"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 10
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "PAYTYPE"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 9
dconst_0
dstore 1
iconst_1
istore 5
L0:
aload 10
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 3
L1:
dload 3
dstore 1
L26:
dload 1
dstore 3
iload 5
istore 6
iload 5
ifeq L27
dload 1
dconst_0
dcmpl
ifle L28
aload 10
ldc "."
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L28
dload 1
dstore 3
iload 5
istore 6
aload 10
aload 10
ldc "."
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/String/length()I
iconst_2
if_icmple L27
iconst_0
istore 6
dload 1
dstore 3
L27:
iload 6
ifne L29
aload 0
getfield com/bestpay/plugin/Plugin$4/val$context Landroid/content/Context;
ldc "\u91d1\u989d\u8f93\u5165\u4e0d\u6b63\u786e,\u5355\u4f4d\u662f\u5143,\u5c0f\u6570\u70b9\u540e\u4e24\u4f4d"
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L6:
aload 7
ldc "SUBMERCHANTID"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "SUBMERCHANTID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L7
L8:
aload 7
ldc "OTHERFLOW"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "OTHERFLOW"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L9
L10:
aload 7
ldc "CUSTOMERID"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "CUSTOMERID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L11
L12:
aload 7
ldc "PRODUCTAMOUNT"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "PRODUCTAMOUNT"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L13
L14:
aload 7
ldc "ATTACHAMOUNT"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ATTACHAMOUNT"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L15
L16:
aload 7
ldc "ATTACH"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "ATTACH"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L17
L18:
aload 7
ldc "PRODUCTID"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "PRODUCTID"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L19
L20:
aload 7
ldc "DIVDETAILS"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "DIVDETAILS"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L21
L22:
aload 7
ldc "USERACCOUNT"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "USERACCOUNT"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L23
L24:
aload 7
ldc "MERCHANTPHONE"
aload 0
getfield com/bestpay/plugin/Plugin$4/val$params Ljava/util/Hashtable;
ldc "MERCHANTPHONE"
invokevirtual java/util/Hashtable/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L25
L2:
astore 11
iconst_0
istore 5
goto L26
L28:
aload 10
ldc "."
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L30
new java/math/BigDecimal
dup
aload 10
invokespecial java/math/BigDecimal/<init>(Ljava/lang/String;)V
iconst_2
iconst_4
invokevirtual java/math/BigDecimal/setScale(II)Ljava/math/BigDecimal;
invokevirtual java/math/BigDecimal/toString()Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 3
iload 5
istore 6
goto L27
L30:
iconst_0
istore 6
dload 1
dstore 3
goto L27
L29:
new java/text/DecimalFormat
dup
ldc "0.00"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
astore 10
ldc "1"
aload 9
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L31
dload 3
ldc2_w 50.0D
dcmpl
ifle L32
aload 8
ldc "ORDAMOUNT_LIMIT"
invokestatic com/bestpay/plugin/Plugin/access$0(Landroid/content/Intent;Ljava/lang/String;)V
L3:
aload 0
getfield com/bestpay/plugin/Plugin$4/val$context Landroid/content/Context;
checkcast android/app/Activity
aload 8
sipush 1000
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L4:
return
L5:
astore 7
return
L32:
aload 7
ldc "ORDERAMOUNT"
aload 10
dload 3
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 8
aload 7
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 8
new android/content/ComponentName
dup
ldc "com.chinatelecom.bestpayplugin"
ldc "com.chinatelecom.bestpayplugin.BillPayActivity"
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
goto L3
L31:
aload 7
ldc "ORDERAMOUNT"
aload 10
dload 3
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 8
aload 7
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 8
new android/content/ComponentName
dup
ldc "com.chinatelecom.bestpayplugin"
ldc "com.chinatelecom.bestpayplugin.PaymentActivity"
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
goto L3
.limit locals 12
.limit stack 5
.end method
