.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchDepartActivity
.super com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity
.inner class inner com/nd/android/u/contact/activity/SearchDepartActivity$1
.inner class MyOnClickListener inner com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener outer com/nd/android/u/contact/activity/SearchDepartActivity
.inner class SearchDepartAdapter inner com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter outer com/nd/android/u/contact/activity/SearchDepartActivity
.inner class Holder inner com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder outer com/nd/android/u/contact/activity/SearchDepartActivity
.inner class SearchDepartNode inner com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode outer com/nd/android/u/contact/activity/SearchDepartActivity

.field protected static final 'TAG' Ljava/lang/String; = "SearchDepartActivity"

.field private 'deptid' I

.field private 'listView' Landroid/widget/ListView;

.field private 'mSearchDepartAdapter' Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;

.field private 'tvNoSearchResult' Landroid/widget/TextView;

.field private 'unitid' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/tvNoSearchResult Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/mSearchDepartAdapter Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/deptid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected final _onCreate(Landroid/os/Bundle;)Z
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_search_depart I
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/setContentView(I)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/initEvent()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/getIntent()Landroid/content/Intent;
ldc "unitid"
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/unitid I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/contact/activity/SearchDepartActivity/unitid I
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/getIntent()Landroid/content/Intent;
ldc "deptid"
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/deptid I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/contact/activity/SearchDepartActivity/deptid I
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/titleText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/searchEdit Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setVisibility(I)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/search_depart I
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected final initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/search_depart_listview I
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SearchDepartActivity/listView Landroid/widget/ListView;
aload 0
new com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter
dup
aload 0
aload 0
invokespecial com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/<init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/SearchDepartActivity/mSearchDepartAdapter Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/mSearchDepartAdapter Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tvNoSearchResult I
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SearchDepartActivity/tvNoSearchResult Landroid/widget/TextView;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_search_control I
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/SearchDepartActivity/rightBtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/searchBtn Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 5
.end method

.method protected final initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/PhotoScreenUnitHeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity/searchEdit Landroid/widget/EditText;
new com/nd/android/u/contact/activity/SearchDepartActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchDepartActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)V
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 4
.end method
