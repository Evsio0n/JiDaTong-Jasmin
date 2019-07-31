.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse
.super java/lang/Object
.implements com/nd/rj/common/interfaces/VerifyObject
.inner class public static UpdateStudentInfoSuccessResponse inner com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse outer com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo

.field public static final 'DEFAULT' I = 0


.field public 'mAreaCode' Ljava/lang/String;

.field public 'mClassmateNum' I

.field public 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;>;"

.field public 'mHighSchoolCode' Ljava/lang/String;

.field public 'mTownsmennum' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mClassmateNum I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mTownsmennum I
return
.limit locals 1
.limit stack 2
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mAreaCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mHighSchoolCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
