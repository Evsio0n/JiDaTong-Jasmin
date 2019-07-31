.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1
.inner class private static Holder inner com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder outer com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter

.field private static final 'TAG' Ljava/lang/String; = "IdentityResultAdapter"

.field private 'binduserList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"

.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'context' Landroid/app/Activity;

.field private 'loginFrom' Z

.method public <init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V
.signature "(Landroid/app/Activity;Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;Z)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/context Landroid/app/Activity;
aload 0
aconst_null
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
aload 0
new com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1/<init>(Lcom/nd/android/u/cloud/ui/adapter/IdentityResultAdapter;)V
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/context Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
aload 0
iload 3
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/loginFrom Z
return
.limit locals 4
.limit stack 4
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/business/login/BindUser
astore 4
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder
dup
aconst_null
invokespecial com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/<init>(Lcom/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/context Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903678
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
ldc_w 2131626587
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 3
aload 2
ldc_w 2131626589
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/unitnametext Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131626590
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/usernametxt Landroid/widget/TextView;
aload 3
aload 2
ldc_w 2131626591
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/selectbtn Landroid/widget/ImageButton;
aload 3
aload 2
ldc_w 2131624607
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/layout Landroid/widget/LinearLayout;
aload 3
aload 2
ldc_w 2131626588
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/logoff Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
lconst_0
lcmp
ifeq L2
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L3
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/heardimg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
L2:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/unitnametext Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/usernametxt Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/product/android/business/login/BindUser/getType()I
invokestatic com/nd/android/u/contact/util/ContactDatailUtils/getNameFormType(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/loginFrom Z
ifne L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
lcmp
ifne L4
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/layout Landroid/widget/LinearLayout;
ldc_w 2130839332
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/logoff Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 4
iconst_1
invokevirtual com/product/android/business/login/BindUser/setTag(Z)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder
astore 3
goto L1
L3:
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
aload 4
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/heardimg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
goto L2
L4:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/logoff Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter$Holder/layout Landroid/widget/LinearLayout;
ldc_w 2130839348
invokevirtual android/widget/LinearLayout/setBackgroundResource(I)V
aload 4
iconst_0
invokevirtual com/product/android/business/login/BindUser/setTag(Z)V
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setGroupList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/IdentityResultAdapter/binduserList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
