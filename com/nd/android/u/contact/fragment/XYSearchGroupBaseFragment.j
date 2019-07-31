.bytecode 50.0
.class public synchronized abstract com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener
.implements android/text/TextWatcher

.field public static final 'SEARCH_BY_KEY_MESSAGE_WHAT' I = 1001


.field public static final 'SEARCH_BY_NUM_MESSAGE_WHAT' I = 1000


.field private 'cleanTextBtn' Landroid/widget/Button;

.field private 'mSearchBtn' Landroid/widget/Button;

.field private 'mSearchText' Landroid/widget/EditText;

.field private 'parentHandler' Landroid/os/Handler;

.field private 'view' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/header_btn_clear_input I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/cleanTextBtn Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/search_group_btn I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/mSearchBtn Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/header_text_search I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/mSearchText Landroid/widget/EditText;
return
.limit locals 1
.limit stack 3
.end method

.method protected abstract _onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method protected abstract checkKey(Ljava/lang/String;)Z
.end method

.method public cleanEidtText()V
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/mSearchText Landroid/widget/EditText;
ldc ""
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract getMessageWhat()I
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/cleanTextBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/mSearchBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/mSearchText Landroid/widget/EditText;
aload 0
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/header_btn_clear_input I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/cleanEidtText()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/search_group_btn I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/mSearchText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 0
aload 1
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/checkKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 1
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/showToast(Ljava/lang/String;)V
return
L2:
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/getMessageWhat()I
putfield android/os/Message/what I
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/parentHandler Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/setHasOptionsMenu(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 0
aload 1
aload 2
aload 3
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/_onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
putfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/view Landroid/view/View;
aload 0
invokespecial com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/init()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/initEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/view Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 1
invokeinterface java/lang/CharSequence/length()I 0
ifne L0
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/cleanTextBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/btn_search_auto I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/cleanTextBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_search_cancel_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 5
.limit stack 2
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/XYSearchGroupBaseFragment/parentHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method protected abstract showToast(Ljava/lang/String;)V
.end method
