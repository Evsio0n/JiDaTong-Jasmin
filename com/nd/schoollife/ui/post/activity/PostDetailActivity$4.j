.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostDetailActivity$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/schoollife/ui/post/activity/PostDetailActivity/initEvent()V
.inner class inner com/nd/schoollife/ui/post/activity/PostDetailActivity$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1100(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
ldc com/nd/schoollife/ui/post/activity/PostMenuActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 4
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$700(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Z
ifne L0
aload 4
ldc "POST_DETAIL_TO_MENU_PRAISESTR"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1200(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_praise I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L1:
getstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/NORMAL Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$PostRole/val()I
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getUser_info()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/UserInfoBean/getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L3
getstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$PostRole/val()I
istore 2
L4:
iconst_0
istore 3
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
ifnull L5
iload 2
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getType()I
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1400(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getScope()Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/ScopeInfoBean/getRole()I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/isDeletePostEnableInPostDetail(III)Z
istore 3
L5:
aload 4
ldc "ROLE_POSTDETAIL_DELETE_POST"
iload 3
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
aload 4
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
aload 1
iconst_1
invokevirtual com/nd/schoollife/ui/post/activity/PostDetailActivity/startActivityForResult(Landroid/content/Intent;I)V
L2:
return
L0:
aload 4
ldc "POST_DETAIL_TO_MENU_PRAISESTR"
aload 0
getfield com/nd/schoollife/ui/post/activity/PostDetailActivity$4/this$0 Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostDetailActivity/access$1300(Lcom/nd/schoollife/ui/post/activity/PostDetailActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_cancel_praise I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L1
L3:
getstatic com/nd/schoollife/common/enums/RoleAuthority$PostRole/NORMAL Lcom/nd/schoollife/common/enums/RoleAuthority$PostRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$PostRole/val()I
istore 2
goto L4
.limit locals 5
.limit stack 4
.end method
