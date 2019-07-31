.bytecode 50.0
.class public synchronized com/android/u/weibo/contact/ui/dialog/DlgPermissionSet
.super android/app/Dialog
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2
.inner class private MyAdapter inner com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter outer com/android/u/weibo/contact/ui/dialog/DlgPermissionSet
.inner class public static abstract interface OnDlgPmsDismissListener inner com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener outer com/android/u/weibo/contact/ui/dialog/DlgPermissionSet

.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'itemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'mDismissListener' Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;

.field private 'm_Adapter' Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter;

.field private 'm_btnCancel' Landroid/widget/Button;

.field private 'm_btnSet' Landroid/widget/Button;

.field private 'm_context' Landroid/content/Context;

.field private 'm_iPermission' I

.field 'm_listItem' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"

.field private 'm_lvPermission' Landroid/widget/ListView;

.method public <init>(Landroid/content/Context;II)V
aload 0
aload 1
iload 3
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
new com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)V
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$2/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)V
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/clickListener Landroid/view/View$OnClickListener;
aload 0
iload 2
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_iPermission I
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_context Landroid/content/Context;
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)I
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_iPermission I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;I)I
aload 0
iload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_iPermission I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_Adapter Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/mDismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initListItems()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_listItem Ljava/util/ArrayList;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "ItemTitle"
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/permission_to_all_xy I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_listItem Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "ItemTitle"
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/permission_to_friends I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_listItem Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "ItemTitle"
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/permission_hide I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_listItem Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/requestWindowFeature(I)Z
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/android/u/weibo/R$layout/xy_permission_set I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/setContentView(I)V
L1:
aload 0
aload 0
getstatic com/android/u/weibo/R$id/button_cancel I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_btnCancel Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/button_set I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_btnSet Landroid/widget/Button;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/list_view_permission I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_lvPermission Landroid/widget/ListView;
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/initListItems()V
aload 0
new com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter
dup
aload 0
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_context Landroid/content/Context;
invokespecial com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/<init>(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;Landroid/content/Context;)V
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_Adapter Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_lvPermission Landroid/widget/ListView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_Adapter Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_lvPermission Landroid/widget/ListView;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_btnCancel Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/m_btnSet Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getstatic com/android/u/weibo/R$layout/permission_set I
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/setContentView(I)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method public setOnAfterDismissListener(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/mDismissListener Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$OnDlgPmsDismissListener;
return
.limit locals 2
.limit stack 2
.end method
