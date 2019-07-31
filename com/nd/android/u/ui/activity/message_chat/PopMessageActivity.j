.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/message_chat/PopMessageActivity
.super com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity
.implements com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener

.field private static final 'POPUP_HEIGHT_PERCENT' F = 0.65F


.method public <init>()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected addDefaultFragment(Ljava/lang/String;)V
new com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment
dup
invokespecial com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment/<init>()V
astore 1
aload 0
new com/nd/android/u/ui/widge/chatfragment/MessageListFragment
dup
invokespecial com/nd/android/u/ui/widge/chatfragment/MessageListFragment/<init>()V
putfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "SHOW_POP_MESSAGE"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/setArguments(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
astore 2
aload 0
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/newInstance()Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
putfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "generalid"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/generalId J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 3
ldc "MESSAGE_TYPE"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/messageType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 3
ldc "grouptype"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/groupType I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/content Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 3
ldc "edittextvalue"
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/content Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 3
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/setArguments(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
iconst_0
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/setEnableTypeSelection(Z)V
aload 2
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
astore 2
aload 2
getstatic com/nd/android/u/ui/activity/message_chat/PopMessageActivity/HEAD_CONTAINER_ID I
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 2
getstatic com/nd/android/u/ui/activity/message_chat/PopMessageActivity/CONTENT_CONTAINER_ID I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mMessageListFragment Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 2
getstatic com/nd/android/u/ui/activity/message_chat/PopMessageActivity/BOTTOM_CONTAINER_ID I
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual android/support/v4/app/FragmentTransaction/add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
aload 2
invokevirtual android/support/v4/app/FragmentTransaction/commit()I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public createPopQuickReply()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/dismisswidge()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/generalId J
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/createPopQuickReply(J)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
iconst_0
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/setAllowEdit(Z)V
return
.limit locals 1
.limit stack 3
.end method

.method protected getParam(Landroid/os/Bundle;)Z
aload 0
aload 1
ldc "MESSAGE_TYPE"
iconst_m1
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/messageType I
aload 0
aload 1
ldc "generalid"
ldc2_w -1L
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;J)J
putfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/generalId J
aload 0
aload 1
ldc "grouptype"
iconst_m1
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/groupType I
iconst_1
ireturn
.limit locals 2
.limit stack 5
.end method

.method public onClickSwitchBtn()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/requestWindowFeature(I)Z
pop
aload 1
ifnull L0
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/refreshViewByChanged()V
L0:
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
i2f
ldc_w 0.65F
fmul
f2i
putfield android/view/WindowManager$LayoutParams/height I
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/getWindow()Landroid/view/Window;
aload 1
invokevirtual android/view/Window/setAttributes(Landroid/view/WindowManager$LayoutParams;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onDismissOtherFragment()V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/isAdded()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mBottomFragment Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/dismisswidge()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected onRestart()V
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/onRestart()V
aload 0
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/refreshViewByChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public refresh()V
return
.limit locals 1
.limit stack 0
.end method

.method protected removeHeaderOnNewIntent(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)V
aload 1
getstatic com/nd/android/u/ui/activity/message_chat/PopMessageActivity/HEAD_CONTAINER_ID I
invokevirtual android/support/v4/app/FragmentManager/findFragmentById(I)Landroid/support/v4/app/Fragment;
checkcast com/nd/android/u/ui/widge/chatfragment/NotifyPopupHeadFragment
astore 1
aload 1
ifnull L0
aload 2
aload 1
invokevirtual android/support/v4/app/FragmentTransaction/remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public showPopQuickReply(II)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/PopMessageActivity/mPopQuickReply Lcom/nd/android/u/ui/widge/chatfragment/PopQuickReply;
aload 0
getstatic com/nd/android/u/ui/activity/message_chat/PopMessageActivity/CONTENT_CONTAINER_ID I
invokevirtual com/nd/android/u/ui/activity/message_chat/PopMessageActivity/findViewById(I)Landroid/view/View;
iload 1
iload 2
invokevirtual com/nd/android/u/ui/widge/chatfragment/PopQuickReply/show(Landroid/view/View;II)V
return
.limit locals 3
.limit stack 4
.end method
