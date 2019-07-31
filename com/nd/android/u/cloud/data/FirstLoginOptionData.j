.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/data/FirstLoginOptionData
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "FirstLoginOptionData"

.field private static 'instance' Lcom/nd/android/u/cloud/data/FirstLoginOptionData;

.field private final 'KEY_PORTRAIT' Ljava/lang/String;

.field private final 'KEY_SHOW_PICTURE' Ljava/lang/String;

.field private 'm_bmPortrait' Landroid/graphics/Bitmap;

.field private 'm_bmShowPicture' Landroid/graphics/Bitmap;

.field private 'm_listActivity' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/app/Activity;>;"

.field private 'm_listUserID' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.method static <clinit>()V
new com/nd/android/u/cloud/data/FirstLoginOptionData
dup
invokespecial com/nd/android/u/cloud/data/FirstLoginOptionData/<init>()V
putstatic com/nd/android/u/cloud/data/FirstLoginOptionData/instance Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "keyPortrait"
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/KEY_PORTRAIT Ljava/lang/String;
aload 0
ldc "keyShowPicture"
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/KEY_SHOW_PICTURE Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
getstatic com/nd/android/u/cloud/data/FirstLoginOptionData/instance Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
ifnonnull L0
new com/nd/android/u/cloud/data/FirstLoginOptionData
dup
invokespecial com/nd/android/u/cloud/data/FirstLoginOptionData/<init>()V
putstatic com/nd/android/u/cloud/data/FirstLoginOptionData/instance Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
L0:
getstatic com/nd/android/u/cloud/data/FirstLoginOptionData/instance Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
areturn
.limit locals 0
.limit stack 2
.end method

.method public addActivity(Landroid/app/Activity;)V
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public finishAllActivity()V
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
L0:
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
L1:
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
ifnonnull L2
return
L2:
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
goto L3
L4:
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
return
.limit locals 2
.limit stack 2
.end method

.method public getListUserID()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Long;>;"
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listUserID Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPortraitBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPortraitKey()Ljava/lang/String;
ldc "keyPortrait"
areturn
.limit locals 1
.limit stack 1
.end method

.method public getShowPicture()Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getShowPictureKey()Ljava/lang/String;
ldc "keyShowPicture"
areturn
.limit locals 1
.limit stack 1
.end method

.method public initData()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listUserID Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 2
.end method

.method public removeActivity(Landroid/app/Activity;)V
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listActivity Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public setListUserID(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_listUserID Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setPortraitBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 1
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
if_acmpeq L0
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
L0:
aload 0
aload 1
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmPortrait Landroid/graphics/Bitmap;
return
.limit locals 2
.limit stack 2
.end method

.method public setShowPicture(Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
aload 1
if_acmpeq L0
aload 0
getfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
L0:
aload 0
aload 1
putfield com/nd/android/u/cloud/data/FirstLoginOptionData/m_bmShowPicture Landroid/graphics/Bitmap;
return
.limit locals 2
.limit stack 2
.end method
