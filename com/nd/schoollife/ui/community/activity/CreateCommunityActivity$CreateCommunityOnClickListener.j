.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private CreateCommunityOnClickListener inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener outer com/nd/schoollife/ui/community/activity/CreateCommunityActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;

.method private <init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$2100(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/view/inputmethod/InputMethodManager;
invokevirtual android/view/inputmethod/InputMethodManager/isActive()Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$2100(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/view/inputmethod/InputMethodManager;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/sv_create_community I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
invokevirtual android/widget/ScrollView/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/finish()V
L2:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_create_community_commit I
if_icmpne L3
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$2200(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
return
L3:
iload 2
getstatic com/nd/schoollife/R$id/btn_create_community_community_img I
if_icmpne L4
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$2300(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
return
L4:
iload 2
getstatic com/nd/schoollife/R$id/btn_create_community_next_community_signs I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$CreateCommunityOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/nextCommunitySigns()V
return
.limit locals 3
.limit stack 3
.end method
