.bytecode 50.0
.class public final synchronized enum com/nd/android/u/cloud/activity/welcome/WelcomeInfo
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;

.field private 'mDefaultPicPath' Ljava/lang/String;

.field private 'mHeadFaceUri' Landroid/net/Uri;

.field private 'mIsBindPhone' Z

.field private 'mIsDownloadPicComplete' Z

.field private 'mLastUploadUri' Landroid/net/Uri;

.field 'mResponse' Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;

.method static <clinit>()V
new com/nd/android/u/cloud/activity/welcome/WelcomeInfo
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeInfo/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
iconst_1
anewarray com/nd/android/u/cloud/activity/welcome/WelcomeInfo
dup
iconst_0
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
aastore
putstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/$VALUES [Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mIsDownloadPicComplete Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mIsBindPhone Z
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
ldc com/nd/android/u/cloud/activity/welcome/WelcomeInfo
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/cloud/activity/welcome/WelcomeInfo
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/$VALUES [Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
invokevirtual [Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clearData()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mHeadFaceUri Landroid/net/Uri;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mLastUploadUri Landroid/net/Uri;
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mDefaultPicPath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L1:
return
L0:
new java/io/File
dup
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mDefaultPicPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L1
aload 1
invokevirtual java/io/File/delete()Z
pop
aload 0
aconst_null
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mDefaultPicPath Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public getAreaCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mAreaCode Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getClassmateNum()I
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mClassmateNum I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getData()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;>;"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mData Ljava/util/List;
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDefaultPicPath()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mDefaultPicPath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getHeadUri()Landroid/net/Uri;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mHeadFaceUri Landroid/net/Uri;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getHighSchoolCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mHighSchoolCode Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIsBindPhone()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mIsBindPhone Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsDownloadPicComplete()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mIsDownloadPicComplete Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLastUploadUri()Landroid/net/Uri;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mLastUploadUri Landroid/net/Uri;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResponse()Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTownsmennum()I
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
getfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mTownsmennum I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setDefaultPicPath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mDefaultPicPath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setHeadFaceUri(Landroid/net/Uri;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mHeadFaceUri Landroid/net/Uri;
return
.limit locals 2
.limit stack 2
.end method

.method public setIsBindPhone(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mIsBindPhone Z
return
.limit locals 2
.limit stack 2
.end method

.method public setIsDownloadPicComplete(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mIsDownloadPicComplete Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLastUploadUri(Landroid/net/Uri;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mLastUploadUri Landroid/net/Uri;
return
.limit locals 2
.limit stack 2
.end method

.method public setResponse(Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeInfo/mResponse Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;
return
.limit locals 2
.limit stack 2
.end method
