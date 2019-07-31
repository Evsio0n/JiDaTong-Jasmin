.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchUserActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/SearchUserActivity$1
.inner class inner com/nd/android/u/contact/activity/SearchUserActivity$2

.field protected static final 'TAG' Ljava/lang/String; = "SearchUserActivity"

.field 'friendSearchOnClicked' Landroid/view/View$OnClickListener;

.field private 'img1' Landroid/widget/ImageView;

.field private 'imgOnClick' Landroid/view/View$OnClickListener;

.field private 'imm' Landroid/view/inputmethod/InputMethodManager;

.field private 'relative1' Landroid/widget/RelativeLayout;

.field private 'searchbtn' Landroid/widget/Button;

.field private 'usernameedit' Landroid/widget/EditText;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchUserActivity/usernameedit Landroid/widget/EditText;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchUserActivity/searchbtn Landroid/widget/Button;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchUserActivity/relative1 Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchUserActivity/img1 Landroid/widget/ImageView;
aload 0
new com/nd/android/u/contact/activity/SearchUserActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchUserActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchUserActivity;)V
putfield com/nd/android/u/contact/activity/SearchUserActivity/imgOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/contact/activity/SearchUserActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchUserActivity$2/<init>(Lcom/nd/android/u/contact/activity/SearchUserActivity;)V
putfield com/nd/android/u/contact/activity/SearchUserActivity/friendSearchOnClicked Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SearchUserActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/usernameedit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SearchUserActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/img1 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SearchUserActivity;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/imm Landroid/view/inputmethod/InputMethodManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/contact/R$layout/search_user I
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/initEvent()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/searchuser_edit_name I
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/SearchUserActivity/usernameedit Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/searchuser_relative_userid I
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/SearchUserActivity/relative1 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/searchuser_img1 I
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SearchUserActivity/img1 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/searchuser_btn I
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/SearchUserActivity/searchbtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/relative1 Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/img1 Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/searchbtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/friendSearchOnClicked Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/contact/activity/SearchUserActivity/imm Landroid/view/inputmethod/InputMethodManager;
return
.limit locals 1
.limit stack 3
.end method

.method protected final initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getstatic com/nd/android/u/contact/R$string/addfriend I
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchUserActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method
