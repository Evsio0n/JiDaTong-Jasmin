.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/DlgGroupRevSet
.super android/app/Dialog
.inner class inner com/nd/android/u/contact/dialog/DlgGroupRevSet$1
.inner class inner com/nd/android/u/contact/dialog/DlgGroupRevSet$2
.inner class public MyAdapter inner com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter outer com/nd/android/u/contact/dialog/DlgGroupRevSet

.field public static final 'TYPE_DISSCUSSION' I = 2


.field public static final 'TYPE_GROUP' I = 1


.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'itemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'mDismissListener' Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;

.field private 'm_Adapter' Lcom/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter;

.field private 'm_btnCancel' Landroid/widget/Button;

.field private 'm_btnSet' Landroid/widget/Button;

.field private 'm_context' Landroid/content/Context;

.field private 'm_iPermission' I

.field 'm_listItem' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"

.field private 'm_lvPermission' Landroid/widget/ListView;

.field private 'nGroupType' I

.field private 'tvTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;II)V
aload 0
aload 1
iload 3
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/nGroupType I
aload 0
new com/nd/android/u/contact/dialog/DlgGroupRevSet$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet$1/<init>(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)V
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/nd/android/u/contact/dialog/DlgGroupRevSet$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet$2/<init>(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)V
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
iload 2
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
iconst_2
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
return
L1:
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
return
L2:
aload 0
iconst_1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
return
.limit locals 4
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;III)V
aload 0
aload 1
iload 3
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/nGroupType I
aload 0
new com/nd/android/u/contact/dialog/DlgGroupRevSet$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet$1/<init>(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)V
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/nd/android/u/contact/dialog/DlgGroupRevSet$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet$2/<init>(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)V
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
iload 2
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
iload 4
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/nGroupType I
return
L0:
aload 0
iconst_2
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
goto L3
L1:
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
goto L3
L2:
aload 0
iconst_1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
goto L3
.limit locals 5
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)I
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_iPermission I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)Lcom/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_Adapter Lcom/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;)Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/mDismissListener Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initListItems()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_listItem Ljava/util/ArrayList;
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "ItemTitle"
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_notify_receive_and_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_listItem Ljava/util/ArrayList;
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
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_notify_receive_and_shownum I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_listItem Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/nGroupType I
iconst_1
if_icmpne L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "ItemTitle"
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_notify_mask I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_listItem Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/nGroupType I
iconst_2
if_icmpne L1
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "ItemTitle"
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/discussion_notify_mask I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_listItem Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/contact/R$layout/grouprev_set I
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_title I
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/tvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/button_cancel I
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_btnCancel Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/button_set I
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_btnSet Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/list_view_permission I
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_lvPermission Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/nGroupType I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_msg_setting I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet/initListItems()V
aload 0
new com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter/<init>(Lcom/nd/android/u/contact/dialog/DlgGroupRevSet;Landroid/content/Context;)V
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_Adapter Lcom/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_lvPermission Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_Adapter Lcom/nd/android/u/contact/dialog/DlgGroupRevSet$MyAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_lvPermission Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/itemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_btnCancel Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_btnSet Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/nGroupType I
iconst_2
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/tvTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/DlgGroupRevSet/m_context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/discussion_msg_setting I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method public final setOnAfterDismissListener(Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/DlgGroupRevSet/mDismissListener Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;
return
.limit locals 2
.limit stack 2
.end method
