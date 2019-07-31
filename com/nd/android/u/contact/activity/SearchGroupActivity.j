.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchGroupActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/SearchGroupActivity$1
.inner class inner com/nd/android/u/contact/activity/SearchGroupActivity$2

.field protected static final 'TAG' Ljava/lang/String; = "SearchGroupActivity"

.field 'friendSearchOnClicked' Landroid/view/View$OnClickListener;

.field private 'groupIdEdit' Landroid/widget/EditText;

.field private 'img1' Landroid/widget/ImageView;

.field private 'img2' Landroid/widget/ImageView;

.field private 'imgOnClick' Landroid/view/View$OnClickListener;

.field private 'imm' Landroid/view/inputmethod/InputMethodManager;

.field private 'keyEdit' Landroid/widget/EditText;

.field private 'linear1' Landroid/widget/LinearLayout;

.field private 'linear2' Landroid/widget/LinearLayout;

.field private 'relative1' Landroid/widget/RelativeLayout;

.field private 'relative2' Landroid/widget/RelativeLayout;

.field private 'searchbtn' Landroid/widget/Button;

.field private 'type' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/groupIdEdit Landroid/widget/EditText;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/searchbtn Landroid/widget/Button;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/keyEdit Landroid/widget/EditText;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/relative1 Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/relative2 Landroid/widget/RelativeLayout;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/linear1 Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/linear2 Landroid/widget/LinearLayout;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/img1 Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/SearchGroupActivity/img2 Landroid/widget/ImageView;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SearchGroupActivity/type I
aload 0
new com/nd/android/u/contact/activity/SearchGroupActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchGroupActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)V
putfield com/nd/android/u/contact/activity/SearchGroupActivity/imgOnClick Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/contact/activity/SearchGroupActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchGroupActivity$2/<init>(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)V
putfield com/nd/android/u/contact/activity/SearchGroupActivity/friendSearchOnClicked Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/SearchGroupActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SearchGroupActivity/type I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/linear1 Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/linear2 Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/groupIdEdit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/img1 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/img2 Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/imm Landroid/view/inputmethod/InputMethodManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/SearchGroupActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/keyEdit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_search_group I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/setContentView(I)V
L2:
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/initEvent()V
L0:
iconst_1
ireturn
L1:
aload 0
getstatic com/nd/android/u/contact/R$layout/search_group I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/setContentView(I)V
goto L2
.limit locals 2
.limit stack 2
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_edit_workid I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/SearchGroupActivity/groupIdEdit Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_edit_studentid I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/SearchGroupActivity/keyEdit Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_relative_userid I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/SearchGroupActivity/relative1 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_relative_nickname I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/SearchGroupActivity/relative2 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_layout_userid I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SearchGroupActivity/linear1 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_layout_nickname I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/SearchGroupActivity/linear2 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_img1 I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SearchGroupActivity/img1 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_img2 I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/SearchGroupActivity/img2 Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_group_btn I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/SearchGroupActivity/searchbtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/relative1 Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/relative2 Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/img1 Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/img2 Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/searchbtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/friendSearchOnClicked Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/contact/activity/SearchGroupActivity/imm Landroid/view/inputmethod/InputMethodManager;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getstatic com/nd/android/u/contact/R$string/search_group I
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchGroupActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchGroupActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method
