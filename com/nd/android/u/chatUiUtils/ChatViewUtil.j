.bytecode 50.0
.class public synchronized com/nd/android/u/chatUiUtils/ChatViewUtil
.super java/lang/Object
.inner class static final inner com/nd/android/u/chatUiUtils/ChatViewUtil$1
.inner class static final inner com/nd/android/u/chatUiUtils/ChatViewUtil$2

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getDurationFromFile(Ljava/io/File;)I
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileUtils/getAudioDuration(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpne L0
iconst_0
ireturn
L0:
iload 1
i2f
ldc_w 1000.0F
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
istore 2
iload 2
istore 1
iload 2
bipush 120
if_icmple L1
bipush 120
istore 1
L1:
iload 1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static openPhotoLibrary(Ljava/lang/Object;)V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
.catch android/content/ActivityNotFoundException from L3 to L4 using L5
.catch android/content/ActivityNotFoundException from L6 to L7 using L2
.catch android/content/ActivityNotFoundException from L8 to L9 using L5
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/isSdCardExist()Z
ifne L10
getstatic com/nd/android/u/chat/R$string/chat_no_sdcard_image I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(I)V
L11:
return
L10:
aload 0
ifnull L11
L0:
aload 0
instanceof android/app/Activity
ifeq L6
new android/content/Intent
dup
aload 0
checkcast android/app/Activity
ldc com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
L1:
aload 2
astore 1
L3:
aload 0
checkcast android/app/Activity
aload 2
iconst_3
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L4:
return
L6:
aload 0
instanceof android/support/v4/app/Fragment
ifeq L11
new android/content/Intent
dup
aload 0
checkcast android/support/v4/app/Fragment
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
L7:
aload 2
astore 1
L8:
aload 0
checkcast android/support/v4/app/Fragment
aload 2
iconst_3
invokevirtual android/support/v4/app/Fragment/startActivityForResult(Landroid/content/Intent;I)V
L9:
return
L2:
astore 0
L12:
getstatic com/nd/android/u/chat/R$string/chat_no_album I
invokestatic com/nd/android/u/allCommonUtils/ToastUtils/display(I)V
return
L5:
astore 0
goto L12
.limit locals 3
.limit stack 4
.end method

.method public static openWebView(Landroid/content/Context;Ljava/lang/String;)V
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokespecial android/content/Intent/<init>(Ljava/lang/String;Landroid/net/Uri;)V
astore 1
aload 1
ldc "com.android.browser.application_id"
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static resetImageViewParams(Landroid/view/View;Ljava/lang/Object;)V
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 6
aload 6
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
instanceof java/lang/String
ifeq L0
aload 1
checkcast java/lang/String
aload 6
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
L1:
aload 0
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 5
aload 5
astore 1
aload 5
ifnonnull L2
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 1
L2:
aload 6
getfield android/graphics/BitmapFactory$Options/outHeight I
istore 3
aload 6
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 4
aload 6
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 6
getfield android/graphics/BitmapFactory$Options/outWidth I
if_icmpge L3
aload 6
getfield android/graphics/BitmapFactory$Options/outWidth I
istore 3
aload 6
getfield android/graphics/BitmapFactory$Options/outHeight I
istore 4
L3:
aload 6
iload 3
iload 4
invokestatic com/common/android/ui/gif/BitmapToolkit/getScale(Landroid/graphics/BitmapFactory$Options;II)F
fstore 2
aload 1
aload 6
getfield android/graphics/BitmapFactory$Options/outWidth I
i2f
fload 2
fdiv
f2i
putfield android/view/ViewGroup$LayoutParams/width I
aload 1
aload 6
getfield android/graphics/BitmapFactory$Options/outHeight I
i2f
fload 2
fdiv
f2i
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
aload 1
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
L0:
aload 1
instanceof java/lang/Integer
ifeq L4
aload 0
invokevirtual android/view/View/getResources()Landroid/content/res/Resources;
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aload 6
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
goto L1
L4:
aload 1
instanceof android/graphics/Bitmap
ifeq L1
aload 6
aload 1
checkcast android/graphics/Bitmap
invokevirtual android/graphics/Bitmap/getWidth()I
putfield android/graphics/BitmapFactory$Options/outWidth I
aload 6
aload 1
checkcast android/graphics/Bitmap
invokevirtual android/graphics/Bitmap/getHeight()I
putfield android/graphics/BitmapFactory$Options/outHeight I
goto L1
.limit locals 7
.limit stack 4
.end method

.method public static showDlg(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
new com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog
dup
aload 0
invokespecial com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog/<init>(Landroid/content/Context;)V
astore 3
aload 3
aload 0
getstatic com/nd/android/u/chat/R$string/forwarding_msg_title I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog/setTitle(Ljava/lang/String;)V
aload 3
aload 2
invokevirtual com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog/setValue(Ljava/lang/String;)V
aload 3
aload 0
getstatic com/nd/android/u/chat/R$string/cancel I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/u/chatUiUtils/ChatViewUtil$1
dup
aload 3
invokespecial com/nd/android/u/chatUiUtils/ChatViewUtil$1/<init>(Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 3
aload 0
getstatic com/nd/android/u/chat/R$string/ok I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/u/chatUiUtils/ChatViewUtil$2
dup
aload 3
aload 0
aload 1
invokespecial com/nd/android/u/chatUiUtils/ChatViewUtil$2/<init>(Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;Landroid/app/Activity;Landroid/content/Intent;)V
invokevirtual com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 7
.end method
