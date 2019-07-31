.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/UrlParamsConvert
.inner class public static UpdateStudentInfoReqParams inner com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams outer com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo

.field public static final 'AREACODE' Ljava/lang/String; = "areacode"

.field static final 'DEFAULT' I = 0


.field public static final 'HIGHSCHOOLCODE' Ljava/lang/String; = "highschoolcode"

.field public static final 'SHOWCOUNT' Ljava/lang/String; = "showcount"

.field public static final 'TOP' Ljava/lang/String; = "top"

.field public 'mAreacode' Ljava/lang/String;

.field public 'mHighSchoolCode' Ljava/lang/String;

.field private 'mShowCount' I

.field public 'mTop' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mTop I
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mShowCount I
return
.limit locals 1
.limit stack 2
.end method

.method public doConvert()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mAreacode Ljava/lang/String;
ifnull L0
aload 1
ldc "areacode"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mAreacode Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mHighSchoolCode Ljava/lang/String;
ifnull L1
aload 1
ldc "highschoolcode"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mHighSchoolCode Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L1:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mTop I
ifne L2
aload 1
ldc "top"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mTop I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L2:
aload 1
ldc "showcount"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams/mShowCount I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public isObjectValid()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
