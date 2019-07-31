.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/FriendListFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$1
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$2
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$3
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$4
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$5
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$6
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$7
.inner class private EventManager inner com/nd/android/u/contact/fragment/FriendListFragment$EventManager outer com/nd/android/u/contact/fragment/FriendListFragment
.inner class private UpdateFrinedListTask inner com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask outer com/nd/android/u/contact/fragment/FriendListFragment
.inner class public static synFriendHandler inner com/nd/android/u/contact/fragment/FriendListFragment$synFriendHandler outer com/nd/android/u/contact/fragment/FriendListFragment

.field private static final 'MARGINTOP' I = 0


.field public static final 'SHOW_GRIDVIEW' I = 1


.field public static final 'SHOW_LISTVIEW' I = 0


.field private 'TAG' Ljava/lang/String;

.field private 'addFriendText' Landroid/widget/TextView;

.field private 'end' Z

.field private 'flag' Z

.field private 'friendGroup' Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;

.field private 'friendGroupAdapter' Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;

.field private 'gid' J

.field 'groups' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"

.field private 'gvFriends' Landroid/widget/GridView;

.field private 'heightDistance' I

.field private 'isMenuRefresh' Z

.field private 'layoutParams' Landroid/widget/RelativeLayout$LayoutParams;

.field private 'listView' Landroid/widget/ExpandableListView;

.field private 'mFids' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Long;>;"

.field private 'mImageAdapter' Lcom/nd/android/u/contact/adapter/ImageAdapter;

.field private 'mState' I

.field private 'mUpdateFriendListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mUpdateFrinedListTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mZoomIn' Landroid/view/animation/Animation;

.field private 'mZoomOut' Landroid/view/animation/Animation;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'mbChangeView' Z

.field private 'nextGid' I

.field private 'onClickListener' Landroid/view/View$OnClickListener;

.field private 'onGridViewLongClick' Landroid/widget/AdapterView$OnItemLongClickListener;

.field private 'onListViewLongClick' Landroid/widget/AdapterView$OnItemLongClickListener;

.field private 'onMenuItemClickListener' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'parentHandler' Landroid/os/Handler;

.field private 'popGridViewMenu' Lcom/nd/android/u/contact/menu/PopGridViewMenu;

.field private 'preFirstVisibleItem' I

.field private 'preTotalItem' I

.field private 'promptLayout' Landroid/widget/LinearLayout;

.field private 'selectModule' Z

.field private 'supernatantCountText' Landroid/widget/TextView;

.field private 'supernatantLayout' Landroid/widget/LinearLayout;

.field private 'supernatantNameText' Landroid/widget/TextView;

.field private 'theGroupExpandPosition' I

.field private 'view' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/FriendListFragment/preFirstVisibleItem I
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/FriendListFragment/preTotalItem I
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/FriendListFragment/heightDistance I
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/FriendListFragment/flag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/FriendListFragment/end Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/FriendListFragment/nextGid I
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/FriendListFragment/theGroupExpandPosition I
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/FriendListFragment/selectModule Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/fragment/FriendListFragment/mFids Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/nd/android/u/contact/fragment/FriendListFragment/groups Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/FriendListFragment/isMenuRefresh Z
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
aload 0
ldc "FriendListFragment"
putfield com/nd/android/u/contact/fragment/FriendListFragment/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/contact/fragment/FriendListFragment$3
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$3/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/onListViewLongClick Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
new com/nd/android/u/contact/fragment/FriendListFragment$4
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$4/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/onGridViewLongClick Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
new com/nd/android/u/contact/fragment/FriendListFragment$5
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$5/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/onClickListener Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/contact/fragment/FriendListFragment$6
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$6/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFriendListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/FriendListFragment/mbChangeView Z
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/isMenuRefresh Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/fragment/FriendListFragment;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/contact/fragment/FriendListFragment/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Lcom/nd/android/u/contact/menu/PopGridViewMenu;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/popGridViewMenu Lcom/nd/android/u/contact/menu/PopGridViewMenu;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mbChangeView Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1402(Lcom/nd/android/u/contact/fragment/FriendListFragment;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment/mbChangeView Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment/changeView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/contact/fragment/FriendListFragment;)I
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1700(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/selectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/fragment/FriendListFragment;)J
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/parentHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mFids Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/RelativeLayout$LayoutParams;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/layoutParams Landroid/widget/RelativeLayout$LayoutParams;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/fragment/FriendListFragment;)I
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/theGroupExpandPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private changeView()V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
iconst_0
invokevirtual android/widget/ExpandableListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mZoomIn Landroid/view/animation/Animation;
invokevirtual android/widget/GridView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mZoomOut Landroid/view/animation/Animation;
invokevirtual android/widget/ExpandableListView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
bipush 8
invokevirtual android/widget/ExpandableListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mZoomOut Landroid/view/animation/Animation;
invokevirtual android/widget/GridView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mZoomIn Landroid/view/animation/Animation;
invokevirtual android/widget/ExpandableListView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
return
.limit locals 1
.limit stack 2
.end method

.method private hideLinearLayout()V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/FriendListFragment/theGroupExpandPosition I
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private initComponent()V
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/friendlist_friend_list I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ExpandableListView
putfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
iconst_0
invokevirtual android/widget/ExpandableListView/setCacheColorHint(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/main_friendlist_supernatant I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/main_friendlist_supernatant_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantNameText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/main_friendlist_supernatant_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantCountText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
putfield com/nd/android/u/contact/fragment/FriendListFragment/layoutParams Landroid/widget/RelativeLayout$LayoutParams;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/friends_list_layout_prompt I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/fragment/FriendListFragment/promptLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/friends_list_tx_add I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/fragment/FriendListFragment/addFriendText Landroid/widget/TextView;
invokestatic com/nd/android/u/contact/menu/MenuItemhelper/getInstance()Lcom/nd/android/u/contact/menu/MenuItemhelper;
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$raw/main_friendlist_menu I
invokevirtual com/nd/android/u/contact/menu/MenuItemhelper/getMenuItemList(Landroid/content/Context;I)Ljava/util/List;
astore 1
aload 0
new com/nd/android/u/contact/menu/PopGridViewMenu
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokespecial com/nd/android/u/contact/menu/PopGridViewMenu/<init>(Landroid/app/Activity;Ljava/util/List;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/popGridViewMenu Lcom/nd/android/u/contact/menu/PopGridViewMenu;
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/initMenuEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/popGridViewMenu Lcom/nd/android/u/contact/menu/PopGridViewMenu;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/onMenuItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
invokevirtual com/nd/android/u/contact/menu/PopGridViewMenu/setPopMenuEventListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/gvFriend I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
aload 0
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendListShowState(Landroid/content/Context;)I
putfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
aload 0
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$anim/zoomin I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/nd/android/u/contact/fragment/FriendListFragment/mZoomIn Landroid/view/animation/Animation;
aload 0
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$anim/zoomout I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/nd/android/u/contact/fragment/FriendListFragment/mZoomOut Landroid/view/animation/Animation;
return
.limit locals 2
.limit stack 5
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/onClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
new com/nd/android/u/contact/fragment/FriendListFragment$1
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$1/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
invokevirtual android/widget/ExpandableListView/setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/addFriendText Landroid/widget/TextView;
new com/nd/android/u/contact/fragment/FriendListFragment$2
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$2/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/onListViewLongClick Landroid/widget/AdapterView$OnItemLongClickListener;
invokevirtual android/widget/ExpandableListView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/onGridViewLongClick Landroid/widget/AdapterView$OnItemLongClickListener;
invokevirtual android/widget/GridView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/fragment/FriendListFragment/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method private onGroupExpanded(I)V
iload 1
ifge L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/getGroupCount()I
iload 1
if_icmple L1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
iload 1
invokevirtual android/widget/ExpandableListView/expandGroup(I)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method private showLinearLayout(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/layoutParams Landroid/widget/RelativeLayout$LayoutParams;
ifnonnull L1
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
putfield com/nd/android/u/contact/fragment/FriendListFragment/layoutParams Landroid/widget/RelativeLayout$LayoutParams;
L1:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/layoutParams Landroid/widget/RelativeLayout$LayoutParams;
iconst_0
putfield android/widget/RelativeLayout$LayoutParams/topMargin I
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/layoutParams Landroid/widget/RelativeLayout$LayoutParams;
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroup Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroup Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantCountText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroup Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantCountText Landroid/widget/TextView;
ldc "[0]"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method

.method public initMenuEvent()V
aload 0
new com/nd/android/u/contact/fragment/FriendListFragment$7
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$7/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/onMenuItemClickListener Landroid/widget/AdapterView$OnItemClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method public isSelectModule()Z
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/selectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public notityAdapterDateChange()V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/ObtainFriendRable
dup
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainFriendRable/<init>()V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 2
.limit stack 3
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/setHasOptionsMenu(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getResources()Landroid/content/res/Resources;
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
aload 0
aload 1
getstatic com/nd/android/u/contact/R$layout/friends_list I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment/initComponent()V
aload 0
invokespecial com/nd/android/u/contact/fragment/FriendListFragment/initEvent()V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/updateFriendList(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/view Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onEventMainThread(Ljava/lang/String;)V
ldc "FRIEND_LIST_REFRESH"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/refresh()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onKeyDown()V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/popGridViewMenu Lcom/nd/android/u/contact/menu/PopGridViewMenu;
invokevirtual com/nd/android/u/contact/menu/PopGridViewMenu/showMenuWindow()V
return
.limit locals 1
.limit stack 1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/updateFriendList(Z)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onPause()V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setFriendListShowState(Landroid/content/Context;I)V
aload 0
invokespecial android/support/v4/app/Fragment/onStop()V
return
.limit locals 1
.limit stack 3
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/refresh()V
return
.limit locals 1
.limit stack 1
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
return
L0:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
astore 2
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/initFriendGroups()V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/getFriendGroupList()Ljava/util/List;
ifnull L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/getFriendGroupList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L2
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/getCountFriend()I
ifle L1
L2:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
ifnonnull L3
aload 0
new com/nd/android/u/contact/adapter/FriendGroupAdapter
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 2
invokespecial com/nd/android/u/contact/adapter/FriendGroupAdapter/<init>(Landroid/content/Context;Ljava/util/List;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/selectModule Z
ifeq L4
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gid J
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/setGid(J)V
L4:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/selectModule Z
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/setSelectModule(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/parentHandler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
invokevirtual android/widget/ExpandableListView/setAdapter(Landroid/widget/ExpandableListAdapter;)V
L3:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mFids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L5:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
astore 4
aload 4
ifnull L5
aload 4
invokeinterface java/util/List/isEmpty()Z 0
ifne L5
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mFids Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
goto L5
L6:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
aload 2
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/refresh(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mImageAdapter Lcom/nd/android/u/contact/adapter/ImageAdapter;
ifnonnull L7
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
istore 1
aload 0
new com/nd/android/u/contact/adapter/ImageAdapter
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
iload 1
invokespecial com/nd/android/u/contact/adapter/ImageAdapter/<init>(Landroid/content/Context;I)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/mImageAdapter Lcom/nd/android/u/contact/adapter/ImageAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mImageAdapter Lcom/nd/android/u/contact/adapter/ImageAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mFids Ljava/util/ArrayList;
invokevirtual com/nd/android/u/contact/adapter/ImageAdapter/setList(Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mImageAdapter Lcom/nd/android/u/contact/adapter/ImageAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
L7:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mImageAdapter Lcom/nd/android/u/contact/adapter/ImageAdapter;
invokevirtual com/nd/android/u/contact/adapter/ImageAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/promptLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mState I
iconst_1
if_icmpne L8
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
bipush 8
invokevirtual android/widget/ExpandableListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
return
L8:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/listView Landroid/widget/ExpandableListView;
iconst_0
invokevirtual android/widget/ExpandableListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/gvFriends Landroid/widget/GridView;
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/supernatantLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainFriend()I
iconst_3
if_icmpne L9
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/addFriendText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "<u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getstatic com/nd/android/u/contact/R$string/hard_loading I
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "</u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L10:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/promptLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L9:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L11
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/addFriendText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "<u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getstatic com/nd/android/u/contact/R$string/no_friend I
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "</u>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L10
L11:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/addFriendText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/no_data_now I
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L10
.limit locals 5
.limit stack 5
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment/parentHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment/selectModule Z
return
.limit locals 2
.limit stack 2
.end method

.method public updateFriendList(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment/isMenuRefresh Z
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/fragment/FriendListFragment$UpdateFrinedListTask/<init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;Lcom/nd/android/u/contact/fragment/FriendListFragment$1;)V
putfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFriendListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method
