.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/chatfragment/BottomFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$1
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$10
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$2
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$3
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$4
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$5
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$6
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$7
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$8
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$9
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$9$1
.inner class public static abstract interface CommonBottomListener inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener outer com/nd/android/u/ui/widge/chatfragment/BottomFragment
.inner class public static OPTION inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$OPTION outer com/nd/android/u/ui/widge/chatfragment/BottomFragment
.inner class private RecordOperationManager inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager outer com/nd/android/u/ui/widge/chatfragment/BottomFragment

.field public static final 'EDITTEXTVALUE' Ljava/lang/String; = "edittextvalue"

.field public static final 'REQUEST_CAPTURE_SEND' I = 7


.field public static final 'REQUEST_FILE' I = 8


.field public static final 'REQUEST_IMAGE_CAPTURE' I = 2


.field public static final 'REQUEST_PHOTO_COLLECTIMAGE' I = 6


.field public static final 'REQUEST_PHOTO_LIBRARY' I = 3


.field public static final 'REQUEST_PHOTO_SCRAWL' I = 4


.field public static final 'REQUEST_PHOTO_SEND' I = 5


.field public static final 'SHOWMENU' Ljava/lang/String; = "showmenu"

.field private static final 'SMILEY_SELEECTED' I = 1


.field private static final 'TYPE_SELEECTED' I = 0


.field private 'appGrid' Landroid/widget/GridView;

.field private 'audioImg' Landroid/widget/ImageView;

.field private 'audioLayout' Landroid/widget/LinearLayout;

.field private 'chatAppAdapter' Lcom/nd/android/u/ui/activity/message_chat/ChatAppAdapter;

.field private 'contentEdit' Lcom/common/android/ui/widget/SpenEditText;

.field private 'isCreatePop' Z

.field private 'listener' Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;

.field private 'mDataSupplier' Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;

.field private 'mEnableTypeSelection' Z

.field private 'mGeneralId' J

.field private 'mImageUri' Landroid/net/Uri;

.field private 'mMessageType' I

.field protected 'mOnItemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field public 'mQuickreply' Landroid/widget/ListView;

.field private 'mRecordOpMan' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager;

.field private 'mSeperatorLineView' Landroid/view/View;

.field private 'mShowMenu' Z

.field private 'mSmileyView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'mchatfootlv' Landroid/widget/LinearLayout;

.field private 'mcommBottomCallBack' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;

.field private 'meditTextvalue' Ljava/lang/String;

.field private 'mimgSwitchlv' Landroid/widget/LinearLayout;

.field private 'mlastSendTypingTipTime' J

.field private 'mtypeSelectlv' Landroid/widget/LinearLayout;

.field private 'observer' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field 'proccess' Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess;

.field private 'resultbitmap' Landroid/graphics/Bitmap;

.field private 'sendbtn' Landroid/widget/Button;

.field private 'showAppHandler' Landroid/os/Handler;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
.end field

.field private 'smileyLayout' Landroid/widget/LinearLayout;

.field private 'talkBtn' Landroid/widget/Button;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/meditTextvalue Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mShowMenu Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mEnableTypeSelection Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/isCreatePop Z
aload 0
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$6
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$6/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/showAppHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$7
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$7/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/listener Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;
aload 0
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$8
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$8/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mOnItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$10
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$10/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/proccess Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mEnableTypeSelection Z
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mtypeSelectlv Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/showAppHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1402(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Landroid/net/Uri;)Landroid/net/Uri;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendbtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mEnableTypeSelection Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/talkBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Landroid/view/View;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/showSoftInput(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/audioImg Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mchatfootlv Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendTypingTip()V
return
.limit locals 1
.limit stack 1
.end method

.method private doSendFiles(Landroid/content/Intent;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 1
ldc "paths"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
return
L1:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
new java/io/File
dup
aload 4
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/length()J
lstore 2
lload 2
lconst_0
lcmp
ifne L3
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/chat/R$string/canot_upload_null_file I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L2
L3:
lload 2
ldc2_w 1024L
ldiv
ldc2_w 1024L
ldiv
ldc2_w 200L
lcmp
ifle L4
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/chat/R$string/chat_send_oversize I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L4:
bipush 80
aconst_null
new java/io/File
dup
aload 4
invokespecial java/io/File/<init>(Ljava/lang/String;)V
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
goto L2
.limit locals 5
.limit stack 5
.end method

.method private getPic(Landroid/net/Uri;)Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L4
.catch java/io/IOException from L5 to L6 using L4
.catch java/io/IOException from L7 to L8 using L4
.catch java/io/IOException from L9 to L10 using L4
aconst_null
astore 3
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/resultbitmap Landroid/graphics/Bitmap;
invokestatic com/common/android/utils/ImageUtils/recycleBitmap(Landroid/graphics/Bitmap;)V
aload 1
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
ldc "content"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L11
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
astore 2
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
L12:
aload 2
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
ifne L1
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
iconst_0
invokestatic com/common/android/ui/gif/BitmapToolkit/createThumbnailBitmap(Landroid/app/Activity;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/resultbitmap Landroid/graphics/Bitmap;
L0:
aload 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/resultbitmap Landroid/graphics/Bitmap;
invokestatic com/product/android/utils/FileHelper/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
L1:
ldc "upload"
aload 2
invokestatic com/common/android/utils/ImageUtils/isGifFile(Ljava/lang/String;)Z
invokestatic com/product/android/utils/FileHelper/getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
astore 2
L3:
aload 2
astore 3
L5:
aload 2
invokevirtual java/io/File/exists()Z
ifne L8
L6:
aload 2
astore 3
L7:
aload 2
invokevirtual java/io/File/createNewFile()Z
pop
L8:
aload 2
astore 3
L9:
aload 1
aload 2
invokestatic com/common/android/utils/FileUtils/copyFile(Ljava/io/File;Ljava/io/File;)Z
pop
L10:
aload 2
areturn
L11:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 2
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
goto L12
L2:
astore 4
aload 4
invokevirtual java/io/IOException/printStackTrace()V
goto L1
L4:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getContentResolver()Landroid/content/ContentResolver;
aload 1
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_data"
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ldc "_data"
invokeinterface android/database/Cursor/getColumnIndexOrThrow(Ljava/lang/String;)I 1
istore 2
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 1
iload 2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
astore 3
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 3
areturn
.limit locals 4
.limit stack 6
.end method

.method private goCollectImageActivity()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "uri"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 1
ldc "collect"
ldc ""
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private goSendImageActivity(Z)V
.catch java/io/IOException from L0 to L1 using L2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
ifnonnull L1
L0:
aload 0
ldc "upload"
iconst_0
invokestatic com/product/android/utils/FileHelper/getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
L1:
aload 2
ldc "uri"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new android/content/Intent
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/ui/activity/chat_relative_image/SendImageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
iload 1
ifeq L3
aload 0
aload 3
iconst_5
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L1
L3:
aload 0
aload 3
bipush 7
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 4
.limit stack 4
.end method

.method private hideSoftInput(Landroid/widget/EditText;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "input_method"
invokevirtual android/support/v4/app/FragmentActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 1
invokevirtual android/widget/EditText/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L1:
return
L2:
astore 1
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "hideSoftInput:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method private initDataSupplier()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 1
aload 1
ifnonnull L1
L0:
return
L1:
aload 1
instanceof com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener
ifeq L2
aload 0
aload 1
checkcast com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
L2:
aload 1
instanceof com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter
ifeq L0
aload 0
aload 1
checkcast com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter
invokeinterface com/nd/android/u/ui/activity/message_chat/IUIDataSupplierGetter/getDataSupplier()Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier; 0
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
return
.limit locals 2
.limit stack 2
.end method

.method private initEvent()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/initDataSupplier()V
invokestatic com/nd/android/u/controller/factory/ChatBottomFunctionFactory/getInstance()Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory;
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mMessageType I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mGeneralId J
invokevirtual com/nd/android/u/controller/factory/ChatBottomFunctionFactory/buildMenuItems(Landroid/content/Context;IJ)Ljava/util/List;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/chatAppAdapter Lcom/nd/android/u/ui/activity/message_chat/ChatAppAdapter;
aload 1
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/setIListGridItemList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/chatAppAdapter Lcom/nd/android/u/ui/activity/message_chat/ChatAppAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/talkBtn Landroid/widget/Button;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/initRecordOperationManager(Landroid/widget/Button;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mimgSwitchlv Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendbtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/audioImg Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/audioLayout Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendbtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mtypeSelectlv Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/smileyLayout Landroid/widget/LinearLayout;
aload 0
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mOnItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/meditTextvalue Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/meditTextvalue Ljava/lang/String;
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$4
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$4/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
invokevirtual com/common/android/ui/widget/SpenEditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_foot I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mchatfootlv Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_switch_lv I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mimgSwitchlv Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_switch_sepline_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSeperatorLineView Landroid/view/View;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_btn_send I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendbtn Landroid/widget/Button;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_edit I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_layout_audio I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/audioLayout Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_layout_type_selected I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mtypeSelectlv Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mtypeSelectlv Landroid/widget/LinearLayout;
astore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mEnableTypeSelection Z
ifeq L0
iconst_0
istore 1
L1:
aload 2
iload 1
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_layout_smiley_selected I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/smileyLayout Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_foot_layout_talk_btn I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/talkBtn Landroid/widget/Button;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_img_audio I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/audioImg Landroid/widget/ImageView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/chat_grid_app I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/lvQuickReply I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mQuickreply Landroid/widget/ListView;
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getView()Landroid/view/View;
getstatic com/nd/android/u/chat/R$id/smileyView I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/setInputLimited()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
iconst_0
sipush 500
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;II)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/listener Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;
invokevirtual com/common/android/utils/smiley/SmileyView/setOnSelectGifListener(Lcom/common/android/utils/smiley/SmileyView$OnSelectGifListener;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
new com/nd/android/u/ui/activity/message_chat/ChatAppAdapter
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/ui/activity/message_chat/ChatAppAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/chatAppAdapter Lcom/nd/android/u/ui/activity/message_chat/ChatAppAdapter;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mShowMenu Z
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/refreshFootView(Z)V
return
L0:
bipush 8
istore 1
goto L1
.limit locals 3
.limit stack 4
.end method

.method private isAutoPopQuickReply()V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getIntent()Landroid/content/Intent;
ldc "quick_reply_type"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
tableswitch 1
L0
L0
default : L1
L1:
return
L0:
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$2/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 1
.limit stack 4
.end method

.method public static newInstance()Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
new com/nd/android/u/ui/widge/chatfragment/BottomFragment
dup
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private sendTypingTip()V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
instanceof com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
ifeq L0
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mlastSendTypingTipTime J
lsub
ldc2_w 2000L
lcmp
ifle L0
sipush 193
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
checkcast com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/getGeneralId()J
ldc "inputing now"
invokestatic com/nd/android/u/imSdk/IMSdkCall$PersonMessage/sendNotify(IJLjava/lang/String;)V
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mlastSendTypingTipTime J
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private showContentEdit()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
iconst_0
invokevirtual com/common/android/ui/widget/SpenEditText/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/length()I
ifle L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mtypeSelectlv Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendbtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/talkBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/showSoftInput(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/audioImg Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_record_btn I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mEnableTypeSelection Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mtypeSelectlv Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendbtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L1
.limit locals 1
.limit stack 2
.end method

.method private showSoftInput(Landroid/view/View;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "input_method"
invokevirtual android/support/v4/app/FragmentActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 1
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/showSoftInput(Landroid/view/View;I)Z
pop
L1:
return
L2:
astore 1
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "showSoftInput:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public appGridOrSmileyViewIsShowing()Z
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
ifeq L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/isShowing()Z
ifeq L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public dismisswidge()V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/hideSoftInput(Landroid/widget/EditText;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/hideSmileyViewAndAppGrid()V
return
.limit locals 1
.limit stack 2
.end method

.method public hideAppGrid()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public hideSmileyViewAndAppGrid()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public initRecordOperationManager(Landroid/widget/Button;)V
aload 0
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager
dup
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
new com/nd/android/u/ui/widge/NewTalkPopWindow
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokespecial com/nd/android/u/ui/widge/NewTalkPopWindow/<init>(Landroid/app/Activity;Landroid/view/View;)V
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Landroid/content/Context;Landroid/widget/Button;Lcom/common/android/utils/audio/AudioRecordOperationManager$IRecordOperation;)V
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mRecordOpMan Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager;
return
.limit locals 2
.limit stack 10
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 1
ldc "grouptype"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "grouptype"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
i2l
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mGeneralId J
L2:
aload 0
aload 1
ldc "MESSAGE_TYPE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mMessageType I
aload 1
ldc "edittextvalue"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "edittextvalue"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/meditTextvalue Ljava/lang/String;
L0:
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/initView()V
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/initEvent()V
return
L1:
aload 0
aload 1
ldc "generalid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mGeneralId J
goto L2
.limit locals 2
.limit stack 3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial android/support/v4/app/Fragment/onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
iload 1
tableswitch 2
L1
L2
L3
L3
L4
L3
L5
default : L6
L6:
return
L1:
aload 0
iconst_0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/goSendImageActivity(Z)V
return
L2:
aload 3
ifnull L6
aload 3
ldc "data"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L6
aload 3
ldc "data"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 3
aload 3
ifnull L6
aload 3
invokevirtual java/util/ArrayList/size()I
ifle L6
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$9
dup
aload 0
aload 3
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$9/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Ljava/util/ArrayList;)V
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/executeMore(Ljava/lang/Runnable;)V
return
L3:
aload 3
ifnull L6
aload 0
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/getPic(Landroid/net/Uri;)Ljava/io/File;
astore 3
aload 3
ifnonnull L7
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/chat/R$string/chat_no_data_post I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L7:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
iconst_2
aconst_null
aload 3
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
return
L4:
aload 3
ifnull L6
aload 0
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mImageUri Landroid/net/Uri;
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/goCollectImageActivity()V
return
L5:
aload 3
ifnull L6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 3
ldc "paths"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 4
aload 4
ifnull L6
aload 4
invokevirtual java/util/ArrayList/size()I
ifeq L6
aload 0
aload 3
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/doSendFiles(Landroid/content/Intent;)V
return
L0:
iload 1
bipush 8
if_icmpne L6
iload 2
iconst_1
if_icmpne L6
aload 3
ifnull L6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 3
ldc "paths"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 4
aload 4
ifnull L6
aload 4
invokevirtual java/util/ArrayList/size()I
ifeq L6
aload 0
aload 3
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/doSendFiles(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/chat_switch_lv I
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
ifnull L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
invokeinterface com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener/onClickSwitchBtn()V 0
L1:
return
L0:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_btn_send I
if_icmpne L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
ifnull L4
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
invokeinterface com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener/createPopQuickReply()V 0
L4:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getCurrentFocus()Landroid/view/View;
astore 1
aload 1
ifnull L5
aload 1
instanceof android/widget/EditText
ifeq L5
aload 0
aload 1
checkcast android/widget/EditText
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/hideSoftInput(Landroid/widget/EditText;)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/ui/widge/chatfragment/BottomFragment$5
dup
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment$5/<init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
ldc2_w 100L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
L5:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
ifnull L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mchatfootlv Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getHeight()I
invokeinterface com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener/showPopQuickReply(II)V 2
return
L3:
iconst_0
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 1
invokevirtual com/common/android/utils/smiley/Smileyhelper/getEmojiToSend(Ljava/lang/String;)Ljava/lang/String;
aconst_null
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
aload 0
invokestatic java/lang/System/currentTimeMillis()J
ldc2_w 1000L
ladd
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mlastSendTypingTipTime J
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
ldc ""
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
lconst_0
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mlastSendTypingTipTime J
return
L2:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_layout_audio I
if_icmpeq L6
iload 2
getstatic com/nd/android/u/chat/R$id/chat_img_audio I
if_icmpne L7
L6:
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/switchTextOrAudio()V
return
L7:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_layout_type_selected I
if_icmpne L8
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/hideSoftInput(Landroid/widget/EditText;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/showAppHandler Landroid/os/Handler;
iconst_0
ldc2_w 300L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
return
L8:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_layout_smiley_selected I
if_icmpne L9
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L10
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L10:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/hideSoftInput(Landroid/widget/EditText;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/showAppHandler Landroid/os/Handler;
iconst_1
ldc2_w 300L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
return
L9:
iload 2
getstatic com/nd/android/u/chat/R$id/chat_layout_smiley_selected I
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
ifne L11
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L11:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/hideSoftInput(Landroid/widget/EditText;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/showAppHandler Landroid/os/Handler;
iconst_1
ldc2_w 300L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
return
.limit locals 3
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/isCreatePop Z
aload 0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getArguments()Landroid/os/Bundle;
astore 2
aload 2
ifnull L0
aload 0
aload 2
ldc "showmenu"
iconst_0
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mShowMenu Z
L0:
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/chat_pub_num_bottom_fragment I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mRecordOpMan Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment$RecordOperationManager/destroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/resultbitmap Landroid/graphics/Bitmap;
invokestatic com/common/android/utils/ImageUtils/recycleBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mcommBottomCallBack Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
invokeinterface com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener/refresh()V 0
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/isCreatePop Z
ifeq L1
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/isAutoPopQuickReply()V
L1:
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method public onStop()V
aload 0
invokespecial android/support/v4/app/Fragment/onStop()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/isCreatePop Z
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokeinterface com/nd/android/u/controller/innerInterface/IUIDataSupplier/getConcreteMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/observer Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method public refreshFootView(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mimgSwitchlv Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSeperatorLineView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mimgSwitchlv Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSeperatorLineView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setEnableTypeSelection(Z)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mEnableTypeSelection Z
return
.limit locals 2
.limit stack 2
.end method

.method public showSimplyPopWindow()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/isShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public switchTextOrAudio()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
bipush 8
invokevirtual com/common/android/ui/widget/SpenEditText/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/talkBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mEnableTypeSelection Z
ifeq L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mtypeSelectlv Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/sendbtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/contentEdit Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/hideSoftInput(Landroid/widget/EditText;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/audioImg Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_bt_text_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
invokevirtual android/widget/GridView/getVisibility()I
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/appGrid Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
return
L0:
aload 0
invokespecial com/nd/android/u/ui/widge/chatfragment/BottomFragment/showContentEdit()V
return
.limit locals 1
.limit stack 2
.end method
