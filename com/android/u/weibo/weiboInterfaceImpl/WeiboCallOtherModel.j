.bytecode 50.0
.class public synchronized com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "WeiboCallOtherModel"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static addFriend(JLjava/lang/StringBuilder;)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11002
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "addFriend ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11002
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifne L0
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 2
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static addHiddenLove(JLjava/lang/StringBuilder;)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11011
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "addHiddenLove ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "---uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11011
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifne L0
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 2
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static addToBlackList(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11006
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "addToBlackList ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "---uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11006
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static delFromBlackList(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11007
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "delFromBlackList ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "---uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11007
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static doBackpack(Landroid/app/Activity;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 11
ldc_w 112001
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static doBirthdayGiftGiver(Landroid/app/Activity;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 80001
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static doBlackList(Landroid/support/v4/app/Fragment;I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10103
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public static doHiddenLoveManage(Landroid/app/Activity;Ljava/lang/String;Z)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 3
iload 2
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 3
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10105
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public static doLotHistory(Landroid/app/Activity;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 80003
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static doModheadSuccess()V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 0
aload 0
lconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20059
aload 0
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 0
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20059
aload 0
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public static doPersonalityTag(Landroid/support/v4/app/Fragment;JI)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
iload 3
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 4
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10102
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public static doPhoto(Landroid/support/v4/app/Fragment;JJI)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
iload 5
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 6
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 6
iconst_2
newarray long
dup
iconst_0
lload 1
lastore
dup
iconst_1
lload 3
lastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mIsShow3D Z
ifeq L0
ldc_w 72003
istore 5
L1:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 7
iload 5
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L0:
ldc_w 72002
istore 5
goto L1
.limit locals 7
.limit stack 6
.end method

.method public static doRafflesListPublic(Landroid/app/Activity;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 80004
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static doTopRank(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 1
lconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getLocalOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
iconst_1
if_icmpne L0
aload 1
iconst_2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
L1:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10106
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L0:
aload 1
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
goto L1
.limit locals 2
.limit stack 4
.end method

.method public static getBirthuser(J)Lcom/product/android/commonInterface/task/BirthUserData;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 81001
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getBirthuser ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc_w 81001
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/task/BirthUserData
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/task/BirthUserData
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getBlackLists()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Long;>;"
aconst_null
astore 2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10108
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 0
iload 0
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getBlackLists ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 10108
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
astore 1
L1:
aload 1
areturn
L0:
aload 2
astore 1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 2
astore 1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/ArrayList
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
astore 3
aload 2
astore 1
aload 3
ifnull L1
aload 2
astore 1
aload 3
invokevirtual java/util/ArrayList/size()I
ifeq L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L2:
aload 2
astore 1
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/BlackListPerson
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
.limit locals 4
.limit stack 4
.end method

.method public static getImage(JJI)Ljava/util/ArrayList;
.signature "(JJI)Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
iconst_2
newarray long
dup
iconst_0
lload 0
lastore
dup
iconst_1
lload 2
lastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
iload 4
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 7
ldc_w 71001
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 4
iload 4
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getImage ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uapid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc_w 71001
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/ArrayList
ifeq L1
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
areturn
.limit locals 6
.limit stack 6
.end method

.method public static getLocalOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10001
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getLocalOapUser ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 10001
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getMyHiddenLoveInfos()Lorg/json/JSONObject;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11010
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 0
iload 0
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyHiddenLoveInfos ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11010
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof org/json/JSONObject
ifeq L1
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast org/json/JSONObject
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getOapUserBaseAndExtInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11012
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getOapUserBaseAndExtInfo ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11012
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
L1:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getParentsDepartName(J)[Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10018
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof [Ljava/lang/String;
ifeq L0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast [Ljava/lang/String;
checkcast [Ljava/lang/String;
astore 2
aload 2
arraylength
iconst_3
if_icmpne L1
aload 2
areturn
L1:
aconst_null
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getRelginSid()Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 91002
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 0
iload 0
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getRelginSid ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc_w 91002
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
ldc ""
areturn
L0:
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/lang/String
ifeq L1
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/lang/String
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getTagInfo(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/product/android/commonInterface/contact/TagInfo;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11004
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getTagInfo ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11004
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/List
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
areturn
.limit locals 4
.limit stack 4
.end method

.method public static getUidByName(Ljava/lang/String;)J
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10020
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 1
iload 1
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getUidByName ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --name:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11013
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
lconst_0
lreturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lreturn
.limit locals 3
.limit stack 4
.end method

.method public static getUserName(J)Ljava/lang/String;
lload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getLocalOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 2
ifnull L0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getUserSysAvatarId(J)I
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10002
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getUserSysAvatarId ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 10002
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static goToManagerFriendGroupActivity(JILandroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
iload 2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 4
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 12001
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public static gotoSelectNativePlaceActivity(ILandroid/app/Activity;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92102
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public static isInBlackList(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10104
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "isInBlackList ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "---uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 10104
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static modifyOapUserBaseAndExtInfo(Lorg/json/JSONObject;)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11013
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 1
iload 1
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "modifyOapUserBaseAndExtInfo ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
sipush 11013
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
ireturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static modifyStaffSignature(Ljava/lang/String;)Z
iconst_1
istore 2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11017
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 1
iload 1
ifne L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifne L1
L0:
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "modifyStaffSignature ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --signature:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "---id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11017
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
istore 2
L1:
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static openChat(Landroid/app/Activity;J)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 22060
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public static postBless(J)Lcom/product/android/commonInterface/task/BirthBlessResult;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 81002
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "postBless ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc_w 81002
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/task/BirthBlessResult
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/task/BirthBlessResult
areturn
.limit locals 4
.limit stack 4
.end method

.method public static registerInstallReceiver(Landroid/app/Activity;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 90009
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static relieveFriend(JLjava/lang/StringBuilder;)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11001
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "relieveFriend ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11001
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifne L0
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 2
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public static searchAtList(JLjava/lang/String;II)Ljava/util/List;
.signature "(JLjava/lang/String;II)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 5
iconst_2
newarray int
dup
iconst_0
iload 3
iastore
dup
iconst_1
iload 4
iastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10011
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "searchAtList ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 10011
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/List
ifeq L1
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
areturn
.limit locals 6
.limit stack 5
.end method

.method public static showAlbumSmallImage(Ljava/lang/String;Landroid/widget/ImageView;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 7
ldc_w 70001
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public static synGetOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 0
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11003
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "synGetOapUser ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --uid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 11003
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L1
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
.limit locals 4
.limit stack 4
.end method

.method public static toMainFrameMyProfile(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92011
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static toPanonamaGL(Landroid/app/Activity;Landroid/content/Intent;I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 3
iload 2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92014
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public static toTastGetData()Ljava/util/List;
.signature "()Ljava/util/List<[Ljava/lang/String;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 81003
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 0
iload 0
ifeq L0
ldc "WeiboCallOtherModel"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "toTastGetData ret:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  --id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc_w 81003
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aconst_null
areturn
L0:
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L1
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/List
ifeq L1
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
areturn
.limit locals 2
.limit stack 4
.end method

.method public static unRegisterInstallReceiver(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 90010
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static updateBindUserHeadInfo(Lcom/product/android/business/login/BindUser;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10010
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static updateOapUserInfo(Lcom/product/android/commonInterface/contact/OapUser;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10019
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method
