.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity
.super android/app/Activity
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$3
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$5
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$7
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$8

.field private static final 'HANDLER_CHANGE_BUCKET' I = 2


.field private static final 'HANDLER_LOADDATA_SUCCESS' I = 1


.field public static final 'RESULT_CAMERA' I = 100


.field public static final 'RESULT_CAMERA_SEND' I = 101


.field private 'adapter' Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;

.field private 'context' Landroid/content/Context;

.field private 'gridView' Landroid/widget/GridView;

.field private 'handler' Landroid/os/Handler;

.field private 'mPhotoPath' Ljava/lang/String;

.field private 'photoData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/ui/activity/chat_relative_image/bean/PhotoBucket;>;"

.field private 'popupWindow' Landroid/widget/PopupWindow;

.field private 'progressDialog' Landroid/app/ProgressDialog;

.field private 'titleText' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$8
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$8/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/photoData Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/titleText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/adapter Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/progressDialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/resetPopWindow()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/gridView Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/requestWindowFeature(I)Z
pop
aload 0
aload 0
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
aload 0
new android/app/ProgressDialog
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/progressDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/progressDialog Landroid/app/ProgressDialog;
aload 0
getstatic com/nd/android/u/chat/R$string/send_image_progress_loading I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/getString(I)Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/photoData Ljava/util/List;
aload 0
new com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/adapter Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;
return
.limit locals 1
.limit stack 4
.end method

.method private initHeader()V
aload 0
getstatic com/nd/android/u/chat/R$id/rl_header I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 1
aload 0
getstatic com/nd/android/u/chat/R$id/header_btn_left I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 2
aload 0
getstatic com/nd/android/u/chat/R$id/identity_bt_refresh I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_text_title I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/titleText Landroid/widget/TextView;
aload 1
getstatic com/nd/android/u/chat/R$drawable/xy_bg_header I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 2
getstatic com/nd/android/u/chat/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 2
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/titleText Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$color/xy_header_title I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/titleText Landroid/widget/TextView;
getstatic com/nd/android/u/chat/R$string/send_image_title_text I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/titleText Landroid/widget/TextView;
iconst_0
iconst_0
getstatic com/nd/android/u/chat/R$drawable/send_image_title_up_icon I
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/titleText Landroid/widget/TextView;
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$2/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;Landroid/widget/RelativeLayout;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getstatic com/nd/android/u/chat/R$drawable/send_image_send_btn_selector I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 3
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$3/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 5
.end method

.method private initView()V
aload 0
getstatic com/nd/android/u/chat/R$layout/layout_send_image_main I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/initHeader()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/photo_gridview I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/adapter Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/gridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/adapter Lcom/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter;
getfield com/nd/android/u/ui/activity/chat_relative_image/adapter/PhotoAdapter/scorllListner Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/GridView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 3
.end method

.method private loadData()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/progressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/photoData Ljava/util/List;
invokeinterface java/util/List/clear()V 0
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$4/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/ThreadUtil/executeMore(Ljava/lang/Runnable;)V
return
.limit locals 1
.limit stack 3
.end method

.method private resetPopWindow()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/photoData Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/photoData Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
ifnonnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/layout_send_image_menu I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 1
aload 1
getstatic com/nd/android/u/chat/R$id/list_view I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
astore 2
aload 0
new android/widget/PopupWindow
dup
aload 1
iconst_m1
iconst_m1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;II)V
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;)V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
iconst_0
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 2
new com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/photoData Ljava/util/List;
invokespecial com/nd/android/u/ui/activity/chat_relative_image/adapter/MenuAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 1
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$5
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$5/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$6/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
new com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$7
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity$7/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/SelectorActivity;)V
invokevirtual android/widget/PopupWindow/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
return
.limit locals 3
.limit stack 6
.end method

.method public cameraClick()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
new android/content/Intent
dup
ldc "android.media.action.IMAGE_CAPTURE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
ldc "upload"
iconst_0
invokestatic com/product/android/utils/FileHelper/getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
astore 2
aload 0
aload 2
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/mPhotoPath Ljava/lang/String;
aload 1
ldc "output"
aload 2
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
aload 1
bipush 100
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L2:
astore 1
return
.limit locals 3
.limit stack 3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
ldc "test"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "onActivityResult,requestCode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",resultCode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 1
bipush 100
if_icmpne L3
iload 2
iconst_m1
if_icmpne L4
L0:
ldc "com.nd.android.u.ui.activity.chat_relative_image.SendImageActivity"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 3
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/context Landroid/content/Context;
aload 3
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 4
ldc "uri"
new java/io/File
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/mPhotoPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 3
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 3
bipush 101
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
L4:
new java/io/File
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/mPhotoPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/delete()Z
pop
return
L3:
iload 1
bipush 101
if_icmpne L1
iload 2
iconst_m1
if_icmpne L1
aload 3
invokevirtual android/content/Intent/getData()Landroid/net/Uri;
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
astore 4
aload 4
ifnull L5
aload 4
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 3
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 4
aload 4
ldc "data"
aload 3
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 4
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/setResult(ILandroid/content/Intent;)V
L5:
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/finish()V
return
.limit locals 5
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/init()V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/initView()V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/loadData()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
invokestatic com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/getInstance()Lcom/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/util/DrawableCache/clearCache()V
return
.limit locals 1
.limit stack 1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
aload 2
invokevirtual android/view/KeyEvent/getAction()I
ifne L0
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/SelectorActivity/popupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/app/Activity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
