.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/ContactBaseFragment
.super android/support/v4/app/Fragment
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$1
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$2
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$3
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$4

.field private static final 'TAG' Ljava/lang/String; = "ContactBaseFragment"

.field protected 'childhight' I

.field protected 'count' I

.field protected 'currentNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.field private 'gid' J

.field protected 'grouphight' I

.field protected 'hightdis' I

.field protected 'initUnitFlag' Z

.field public 'isInited' Z

.field private 'longClickListener' Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected 'mCache' Ljava/util/Map; signature "Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"

.field protected 'mGetChildTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'mRefreshUnitTreeTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'mSelectModule' I

.field public 'mView' Landroid/view/View;

.field protected 'm_dialog' Landroid/app/ProgressDialog;

.field protected 'nodeList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"

.field private 'onItemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field protected 'onMenuItemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field protected 'parentHandler' Landroid/os/Handler;

.field protected 'popGridViewMenu' Lcom/nd/android/u/contact/menu/PopGridViewMenu;

.field protected 'promptLayout' Landroid/widget/LinearLayout;

.field protected 'promptText' Landroid/widget/TextView;

.field protected 'refreshNode' Lcom/nd/android/u/contact/dataStructure/Node;

.field protected 'refreshPosition' I

.field protected 'refreshTreeNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.field protected 'start' J

.field protected 'treeAdapter' Lcom/nd/android/u/contact/adapter/TreeAdapter;

.field protected 'treeListView' Landroid/widget/ListView;

.field private 'treeOnScrollListener' Landroid/widget/AbsListView$OnScrollListener;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/start J
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/grouphight I
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/childhight I
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/hightdis I
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/initUnitFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/count I
aload 0
aconst_null
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/isInited Z
aload 0
new com/nd/android/u/contact/fragment/ContactBaseFragment$1
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment$1/<init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/longClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
new com/nd/android/u/contact/fragment/ContactBaseFragment$2
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment$2/<init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/onItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
aload 0
new com/nd/android/u/contact/fragment/ContactBaseFragment$3
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment$3/<init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeOnScrollListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 1
.limit stack 4
.end method

.method public final handler_CMD_31()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public final handler_CMD_x20005()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected final initComponent()V
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/treelist_item_tree I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/main_treenode_layout_prompt I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/main_treenode_text_prompt I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptText Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected final initComponentValue()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-isContactDBInit"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
L1:
aload 0
iconst_0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/initUnits(IZ)V
L2:
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/showPromptLayout()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
ifnonnull L3
aload 0
new com/nd/android/u/contact/adapter/TreeAdapter
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mSelectModule I
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/parentHandler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/adapter/TreeAdapter/<init>(Landroid/content/Context;ILandroid/os/Handler;)V
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mSelectModule I
iconst_1
if_icmpne L4
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/gid J
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setGid(J)V
L4:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setNodeList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setmCache(Ljava/util/Map;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
L3:
return
L0:
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/showPromptLayout()V
return
.limit locals 1
.limit stack 6
.end method

.method protected final initEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeOnScrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mSelectModule I
ifne L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/longClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
invokevirtual android/widget/ListView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/onItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final initNodes(Z)V
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable
dup
iload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 2
.limit stack 6
.end method

.method public initUnits(IZ)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
ifnonnull L15
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
ifnonnull L17
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
L3:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L4
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 1
iload 2
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildClasses(Ljava/util/List;JIZLjava/util/Map;)V
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 3
L5:
aload 3
ifnull L10
L6:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L7
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
aload 3
invokevirtual com/product/android/business/login/BindUser/getUid()J
iload 1
iload 2
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildJMClasses(Ljava/util/List;JIZLjava/util/Map;)V
L7:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L8
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L9
L8:
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
aload 3
invokevirtual com/product/android/business/login/BindUser/getUid()J
iload 1
iload 2
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
iconst_1
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildUnit(Ljava/util/List;JIZLjava/util/Map;Z)V
L9:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L10
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
aload 3
invokevirtual com/product/android/business/login/BindUser/getUid()J
iload 1
iload 2
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildJMClasses(Ljava/util/List;JIZLjava/util/Map;)V
L10:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
ifnull L11
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L14
L11:
aload 3
ifnull L14
L12:
aload 3
invokevirtual com/product/android/business/login/BindUser/getUnittype()I
iconst_1
if_icmpne L14
aload 3
invokevirtual com/product/android/business/login/BindUser/getType()I
iconst_2
if_icmpeq L13
aload 3
invokevirtual com/product/android/business/login/BindUser/getType()I
iconst_3
if_icmpne L14
L13:
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 3
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 4
aload 4
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 3
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
aload 3
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setFirstLoader(Z)V
aload 3
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 3
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setSelectExpand(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L14:
aload 0
monitorexit
return
L15:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L16:
goto L1
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
L17:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
L18:
goto L3
.limit locals 5
.limit stack 8
.end method

.method public final manuRefreshUnitList()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_3
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "\u6b63\u5728\u91cd\u65b0\u751f\u6210\u7ec4\u7ec7\u6811"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
aload 0
aconst_null
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/initNodes(Z)V
return
.limit locals 1
.limit stack 4
.end method

.method public notifyAdapterDateChange()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
aload 2
iconst_1
invokestatic com/nd/android/u/contact/dialog/MyProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/setHasOptionsMenu(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokeinterface android/view/Menu/add(Ljava/lang/CharSequence;)Landroid/view/MenuItem; 1
getstatic com/nd/android/u/contact/R$drawable/refresh I
invokeinterface android/view/MenuItem/setIcon(I)Landroid/view/MenuItem; 1
pop
aload 0
aload 1
aload 2
invokespecial android/support/v4/app/Fragment/onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
return
.limit locals 3
.limit stack 3
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$layout/contact I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/mView Landroid/view/View;
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/initEvent()V
invokestatic com/nd/android/u/contact/menu/MenuItemhelper/getInstance()Lcom/nd/android/u/contact/menu/MenuItemhelper;
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$raw/main_addressbook_unit_menu I
invokevirtual com/nd/android/u/contact/menu/MenuItemhelper/getMenuItemList(Landroid/content/Context;I)Ljava/util/List;
astore 1
aload 0
new com/nd/android/u/contact/menu/PopGridViewMenu
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokespecial com/nd/android/u/contact/menu/PopGridViewMenu/<init>(Landroid/app/Activity;Ljava/util/List;)V
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/popGridViewMenu Lcom/nd/android/u/contact/menu/PopGridViewMenu;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/popGridViewMenu Lcom/nd/android/u/contact/menu/PopGridViewMenu;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/onMenuItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual com/nd/android/u/contact/menu/PopGridViewMenu/setPopMenuEventListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
aconst_null
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
L0:
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/manuRefreshUnitList()V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public refreshTree()V
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/refreshTreeNodes(Ljava/util/List;Ljava/util/Map;)V
return
.limit locals 1
.limit stack 3
.end method

.method public final setExpand(Lcom/nd/android/u/contact/dataStructure/Node;ILjava/util/Map;)V
.signature "(Lcom/nd/android/u/contact/dataStructure/Node;ILjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
invokestatic java/lang/System/currentTimeMillis()J
lstore 5
aload 3
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 7
aload 7
ifnull L0
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L1
L0:
return
L1:
aload 7
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 4
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isAlreadyRead()Z
ifeq L2
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
iload 2
iconst_1
iadd
iconst_0
aload 3
invokevirtual com/nd/android/u/contact/business/TreeNodePro/addChildNode(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;IZLjava/util/Map;)I
pop
L3:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 4
if_icmpeq L4
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
iload 2
invokevirtual android/widget/ListView/setSelection(I)V
L4:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setNodeList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 3
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setmCache(Ljava/util/Map;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L5
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L6
L5:
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
ifnull L7
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L7
L6:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
iload 2
invokevirtual android/widget/ListView/setSelection(I)V
L7:
ldc "ContactBaseFragment"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5c55\u5f00\u7ed3\u70b9\u7684\u65f6\u95f4\u5dee:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
lload 5
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L2:
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
iload 2
iconst_1
iadd
aload 3
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setExpandNodeByDB(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;ILjava/util/Map;)V
goto L3
.limit locals 8
.limit stack 6
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/parentHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelectModule(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/mSelectModule I
return
.limit locals 2
.limit stack 2
.end method

.method protected final showPromptLayout()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
tableswitch 1
L1
L2
default : L3
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptText Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/hard_loading I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "<u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/reload I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "</u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/promptText Landroid/widget/TextView;
new com/nd/android/u/contact/fragment/ContactBaseFragment$4
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment$4/<init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method
