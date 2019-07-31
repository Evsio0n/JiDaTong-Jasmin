.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/SeniorInfo
.super java/lang/Object
.implements java/io/Serializable

.field private static final 'serialVersionUID' J = 1L


.field public 'gender' I

.field public 'headIcon' Ljava/lang/String;

.field public 'highschool' Ljava/lang/String;

.field public 'isAgree' Z

.field public 'joindate' Ljava/lang/String;

.field public 'majorname' Ljava/lang/String;

.field public 'nativePlace' Ljava/lang/String;

.field public 'nickname' Ljava/lang/String;

.field public 'signture' Ljava/lang/String;

.field public 'uid' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/isAgree Z
return
.limit locals 1
.limit stack 2
.end method

.method public loadFromJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "uuid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
aload 0
aload 1
ldc "headIcon"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/headIcon Ljava/lang/String;
aload 0
aload 1
ldc "username"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
aload 0
aload 1
ldc "majorname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/majorname Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
ldc "joindate"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
invokestatic com/product/android/utils/TimeUtils/getDate(J)Ljava/lang/String;
ldc "-"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u7ea7"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/joindate Ljava/lang/String;
aload 0
aload 1
ldc "grade"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/getHighschoolByCode(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/highschool Ljava/lang/String;
aload 0
aload 1
ldc "declares"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/signture Ljava/lang/String;
aload 0
aload 1
ldc "gender"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
aload 0
aload 1
ldc "birthPlace"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/getNativePlaceByCode(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/nativePlace Ljava/lang/String;
aload 1
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
iload 2
ifne L0
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/isAgree Z
L1:
return
L0:
iconst_1
iload 2
if_icmpne L1
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/isAgree Z
return
.limit locals 3
.limit stack 6
.end method
