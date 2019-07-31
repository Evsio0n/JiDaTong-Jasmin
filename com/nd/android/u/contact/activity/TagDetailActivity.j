.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/TagDetailActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/TagDetailActivity$1
.inner class public CardAdapter inner com/nd/android/u/contact/activity/TagDetailActivity$CardAdapter outer com/nd/android/u/contact/activity/TagDetailActivity
.inner class Holder inner com/nd/android/u/contact/activity/TagDetailActivity$CardAdapter$Holder outer com/nd/android/u/contact/activity/TagDetailActivity

.field private 'Activity_Edit' I

.field private 'content' Landroid/view/View;

.field private 'header_layout_right' Landroid/widget/ImageView;

.field protected 'labelGridView' Landroid/widget/GridView;

.field private 'leftBtn' Landroid/widget/ImageView;

.field protected 'numberText' Landroid/widget/TextView;

.field protected 'selectedAdapter' Lcom/nd/android/u/contact/activity/TagDetailActivity$CardAdapter;

.field protected 'tagList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/TagInfo;>;"

.field protected 'tvNodata' Landroid/widget/TextView;

.field private 'uid' J

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
aload 0
sipush 4098
putfield com/nd/android/u/contact/activity/TagDetailActivity/Activity_Edit I
return
.limit locals 1
.limit stack 2
.end method

.method private doBack()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
ldc "taglist"
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/uid J
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendPersonalTagBroadCast(Landroid/content/Context;JLjava/util/ArrayList;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/finish()V
return
.limit locals 1
.limit stack 5
.end method

.method private initData(Landroid/os/Bundle;)V
aload 1
ifnonnull L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/getIntent()Landroid/content/Intent;
ldc "OAP_ID"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/contact/activity/TagDetailActivity/uid J
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/getTagListByDB()V
return
L0:
aload 0
aload 1
ldc "OAP_ID"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/TagDetailActivity/uid J
aload 0
aload 1
ldc "list"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 5
.end method

.method public final getTagListByDB()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
aload 0
ldc com/nd/android/u/contact/dao/TagDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/TagDao
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/uid J
invokeinterface com/nd/android/u/contact/dao/TagDao/findTag(J)Ljava/util/List; 2
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
L0:
return
.limit locals 1
.limit stack 4
.end method

.method protected final initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_manager_layout_grid I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/nd/android/u/contact/activity/TagDetailActivity/labelGridView Landroid/widget/GridView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tvNodata I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/TagDetailActivity/tvNodata Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/content I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/TagDetailActivity/content Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_btn_left I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/TagDetailActivity/leftBtn Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tag_text_number I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/TagDetailActivity/numberText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/header_layout_right I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/TagDetailActivity/header_layout_right Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/uid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/header_layout_right Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tvNodata Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/got_no_tag I
invokevirtual android/widget/TextView/setText(I)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/refTagAdapter()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tvNodata Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/select_tags_to_make_friends I
invokevirtual android/widget/TextView/setText(I)V
goto L1
.limit locals 1
.limit stack 4
.end method

.method protected final initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/header_layout_right Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/leftBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/labelGridView Landroid/widget/GridView;
new com/nd/android/u/contact/activity/TagDetailActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TagDetailActivity$1/<init>(Lcom/nd/android/u/contact/activity/TagDetailActivity;)V
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/Activity_Edit I
if_icmpne L0
aload 0
aload 3
ldc "TAG_LIST"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
putfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/refTagAdapter()V
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_layout_right I
if_icmpne L0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/contact/activity/TagManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "tag_list"
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 0
aload 1
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/Activity_Edit I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/startActivityForResult(Landroid/content/Intent;I)V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_left I
if_icmpne L1
aload 0
invokespecial com/nd/android/u/contact/activity/TagDetailActivity/doBack()V
return
.limit locals 2
.limit stack 4
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onCreate(Landroid/os/Bundle;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_tag_detail I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/setContentView(I)V
L1:
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/TagDetailActivity/initData(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/initEvent()V
return
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/tag_detail I
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
aload 2
invokevirtual android/view/KeyEvent/getKeyCode()I
iconst_4
if_icmpne L0
aload 2
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L0
aload 0
invokespecial com/nd/android/u/contact/activity/TagDetailActivity/doBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/BaseActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "OAP_ID"
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/uid J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 1
ldc "list"
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return
.limit locals 2
.limit stack 4
.end method

.method public final refTagAdapter()V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/content Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tvNodata Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/content Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tvNodata Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagDetailActivity$CardAdapter;
ifnonnull L2
aload 0
new com/nd/android/u/contact/activity/TagDetailActivity$CardAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TagDetailActivity$CardAdapter/<init>(Lcom/nd/android/u/contact/activity/TagDetailActivity;)V
putfield com/nd/android/u/contact/activity/TagDetailActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagDetailActivity$CardAdapter;
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/labelGridView Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagDetailActivity$CardAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
L3:
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/updateTagSize()V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/selectedAdapter Lcom/nd/android/u/contact/activity/TagDetailActivity$CardAdapter;
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity$CardAdapter/notifyDataSetChanged()V
goto L3
.limit locals 1
.limit stack 4
.end method

.method protected final updateTagSize()V
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/numberText Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/selected_num_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/tagList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TagDetailActivity/numberText Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/activity/TagDetailActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/selected_num_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 6
.end method
