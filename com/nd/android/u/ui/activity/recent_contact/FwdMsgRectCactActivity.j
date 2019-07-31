.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements com/product/android/ui/widget/XYSearchBarWidget$OnSearchListener
.inner class inner com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$1
.inner class private static final enum ContentType inner com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType outer com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity

.field private static final 'CONTACT_RECORD_LIST' Ljava/lang/String; = "contact_record_list"

.field private static final 'CONTENT_CONTAINER_ID' I

.field private static final 'NO_CONTACT_RECORD' Ljava/lang/String; = "no_contact_record"

.field private static final 'SEARCH_RECORD_LIST' Ljava/lang/String; = "search_contacts_list"

.field private static final 'TYPE_2_TAG' Ljava/util/Map; signature "Ljava/util/Map<Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;Ljava/lang/String;>;"

.field private 'imm' Landroid/view/inputmethod/InputMethodManager;

.field private 'mContactBtn' Landroid/view/View;

.field private 'mCurFragment' Landroid/support/v4/app/Fragment;

.field private 'mCurrentContentType' Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;

.field private 'mForwardingParam' Lcom/nd/android/u/controller/bean/contact/ForwardingParam;

.field private 'mIvTitleLeft' Landroid/widget/ImageView;

.field private 'mNoRecord' Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;

.field private 'mRecordList' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mSearchList' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;

.field private 'mTvTitle' Landroid/widget/TextView;

.field private 'mViewTitleRight' Landroid/view/View;

.method static <clinit>()V
getstatic com/nd/android/u/chat/R$id/content_container I
putstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/CONTENT_CONTAINER_ID I
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/TYPE_2_TAG Ljava/util/Map;
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/TYPE_2_TAG Ljava/util/Map;
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/NO_CONTACT_RECORD Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
ldc "no_contact_record"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/TYPE_2_TAG Ljava/util/Map;
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/CONTACT_RECORD_LIST Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
ldc "contact_record_list"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/TYPE_2_TAG Ljava/util/Map;
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/SEARCH_CONTACTS_LIST Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
ldc "search_contacts_list"
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private addContentFragment(Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;Ljava/lang/String;)V
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 2
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mCurrentContentType Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
aload 1
if_acmpne L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mCurrentContentType Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
aload 3
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mCurFragment Landroid/support/v4/app/Fragment;
ifnull L1
aload 3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mCurFragment Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentTransaction/hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L1:
aload 0
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/TYPE_2_TAG Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
aload 2
invokespecial com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/tag2Frament(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
astore 1
aload 1
invokevirtual android/support/v4/app/Fragment/isAdded()Z
ifne L2
aload 3
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/CONTENT_CONTAINER_ID I
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L3:
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mCurFragment Landroid/support/v4/app/Fragment;
aload 3
invokevirtual android/support/v4/app/FragmentTransaction/commitAllowingStateLoss()I
pop
return
L2:
aload 3
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
goto L3
.limit locals 4
.limit stack 3
.end method

.method public static getFwdPic(Ljava/lang/String;)Landroid/os/Bundle;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "forward_type"
iconst_2
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "FILE_NAME"
aload 0
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method private setTitleText()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
aload 0
getstatic com/nd/android/u/chat/R$string/choosefriend I
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mTvTitle Landroid/widget/TextView;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method

.method private tag2Frament(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
aload 1
ldc "no_contact_record"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mNoRecord Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
ifnonnull L1
aload 0
invokestatic com/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment/newInstance()Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mNoRecord Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mNoRecord Lcom/nd/android/u/ui/activity/recent_contact/NoContactRecordFragment;
areturn
L0:
aload 1
ldc "contact_record_list"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mRecordList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
ifnonnull L3
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/newInstance(Lcom/nd/android/u/controller/bean/contact/ForwardingParam;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mRecordList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
L3:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mRecordList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
areturn
L2:
aload 1
ldc "search_contacts_list"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
ifnonnull L5
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/newInstance(Lcom/nd/android/u/controller/bean/contact/ForwardingParam;Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
L6:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
areturn
L5:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
aload 2
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/setSearchKey(Ljava/lang/String;)V
goto L6
L4:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/chat/R$layout/activity_fwd_msg_to_rect_cact_rcod I
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/setContentView(I)V
aload 0
aload 0
ldc "input_method"
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/imm Landroid/view/inputmethod/InputMethodManager;
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 2
ldc ""
astore 1
aload 2
ifnull L1
aload 2
ldc "repost_data"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L1:
aload 0
new com/nd/android/u/controller/bean/contact/ForwardingParam
dup
invokespecial com/nd/android/u/controller/bean/contact/ForwardingParam/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 1
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/generateId Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 2
ldc "repost_type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/msgType I
aload 2
ldc "repost_fid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 2
ldc "repost_fid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/userId J
L4:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
iconst_1
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
L5:
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/search_bar I
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/XYSearchBarWidget
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setOnSearchListener(Lcom/product/android/ui/widget/XYSearchBarWidget$OnSearchListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/recent_header_btn_left I
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mIvTitleLeft Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_text_title I
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mTvTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/recent_header_btn_right I
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mViewTitleRight Landroid/view/View;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/recent_header_contact_btn I
invokevirtual com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mContactBtn Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mIvTitleLeft Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mViewTitleRight Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mContactBtn Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mIvTitleLeft Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/xy_btn_header_back_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mIvTitleLeft Landroid/widget/ImageView;
new com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$1/<init>(Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
iconst_1
ireturn
L3:
aload 2
ldc "repost_gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 2
ldc "repost_gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/userId J
goto L4
L2:
aload 2
ldc "forward_type"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifne L6
iconst_0
ireturn
L6:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 2
ldc "forward_type"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/type I
iconst_2
if_icmpne L5
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 2
ldc "FILE_NAME"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/controller/bean/contact/ForwardingParam/filePath Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
getfield com/nd/android/u/controller/bean/contact/ForwardingParam/filePath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
iconst_0
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected onDestroy()V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
iconst_0
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/setIstransmit(Z)V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/setTitleText()V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/isEmpty()Z
ifeq L0
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/NO_CONTACT_RECORD Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
astore 1
L1:
aload 0
aload 1
ldc ""
invokespecial com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/addContentFragment(Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;Ljava/lang/String;)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
iconst_1
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/setIstransmit(Z)V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onResume()V
return
L0:
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/CONTACT_RECORD_LIST Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public onSearchCancel()V
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
invokevirtual com/nd/android/u/business/db/dao/RecentContactRecords/isEmpty()Z
ifeq L0
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/NO_CONTACT_RECORD Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
astore 1
L1:
aload 0
aload 1
ldc ""
invokespecial com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/addContentFragment(Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;Ljava/lang/String;)V
return
L0:
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/CONTACT_RECORD_LIST Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public onSearchChange(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mCurrentContentType Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/SEARCH_CONTACTS_LIST Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
if_acmpne L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/mSearchList Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
aload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/changeSearchText(Ljava/lang/String;)V
return
L0:
aload 0
getstatic com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType/SEARCH_CONTACTS_LIST Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;
aload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity/addContentFragment(Lcom/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity$ContentType;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
