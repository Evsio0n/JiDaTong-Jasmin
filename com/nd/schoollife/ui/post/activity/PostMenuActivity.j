.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/PostMenuActivity
.super android/app/Activity
.inner class inner com/nd/schoollife/ui/post/activity/PostMenuActivity$1
.inner class inner com/nd/schoollife/ui/post/activity/PostMenuActivity$2
.inner class inner com/nd/schoollife/ui/post/activity/PostMenuActivity$3
.inner class inner com/nd/schoollife/ui/post/activity/PostMenuActivity$4

.field public static final 'CANCEL' I = 0


.field public static final 'DELETE_POST' I = 2


.field public static final 'MENU_REQUEST_CODE' I = 1


.field public static final 'PRAISE_POST' I = 1


.field private 'delPostRole' Z

.field private 'praiseStr' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
ldc ""
putfield com/nd/schoollife/ui/post/activity/PostMenuActivity/praiseStr Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/PostMenuActivity/delPostRole Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/post/activity/PostMenuActivity;II)V
aload 0
iload 1
iload 2
invokespecial com/nd/schoollife/ui/post/activity/PostMenuActivity/selfFinsh(II)V
return
.limit locals 3
.limit stack 3
.end method

.method private init()V
aload 0
getstatic com/nd/schoollife/R$id/rl_chage_usr_img_popmenu I
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
astore 1
aload 1
invokevirtual android/widget/RelativeLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 2
aload 2
aload 0
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/getScreenWidth(Landroid/content/Context;)I
putfield android/view/ViewGroup$LayoutParams/width I
aload 1
aload 2
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
new com/nd/schoollife/ui/post/activity/PostMenuActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostMenuActivity$1/<init>(Lcom/nd/schoollife/ui/post/activity/PostMenuActivity;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_chage_img_cancel I
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
new com/nd/schoollife/ui/post/activity/PostMenuActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostMenuActivity$2/<init>(Lcom/nd/schoollife/ui/post/activity/PostMenuActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_chage_img_from_camera I
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostMenuActivity/praiseStr Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 1
new com/nd/schoollife/ui/post/activity/PostMenuActivity$3
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostMenuActivity$3/<init>(Lcom/nd/schoollife/ui/post/activity/PostMenuActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_chage_img_from_photos I
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 1
aload 1
aload 0
getstatic com/nd/schoollife/R$string/str_post_deletepost I
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 1
new com/nd/schoollife/ui/post/activity/PostMenuActivity$4
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostMenuActivity$4/<init>(Lcom/nd/schoollife/ui/post/activity/PostMenuActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostMenuActivity/delPostRole Z
ifeq L0
aload 1
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
L0:
aload 1
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 3
.limit stack 4
.end method

.method private selfFinsh(II)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
ldc "POST_DETAIL_TO_MENU_BUSICODE"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
iload 1
aload 3
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/finish()V
return
.limit locals 4
.limit stack 3
.end method

.method public onCreate(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/schoollife/R$layout/popmenu_change_usrimg I
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/setContentView(I)V
L0:
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/getIntent()Landroid/content/Intent;
ifnull L4
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/PostMenuActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 0
aload 1
ldc "POST_DETAIL_TO_MENU_PRAISESTR"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/schoollife/ui/post/activity/PostMenuActivity/praiseStr Ljava/lang/String;
aload 0
aload 1
ldc "ROLE_POSTDETAIL_DELETE_POST"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/schoollife/ui/post/activity/PostMenuActivity/delPostRole Z
L4:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/PostMenuActivity/init()V
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L4
.limit locals 2
.limit stack 3
.end method
