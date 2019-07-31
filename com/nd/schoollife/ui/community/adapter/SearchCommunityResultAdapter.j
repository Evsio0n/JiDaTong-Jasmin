.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter
.super com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
.signature "Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"
.inner class inner com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1
.inner class private static ViewHolder inner com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder outer com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter

.field private static final 'SEARCH_COMMUNITY_RESULT_INTRO_TEXT_COUNT' I = 20


.field private 'mContext' Landroid/content/Context;

.field private 'mKeyWord' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private updateKeyWord(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mKeyWord Ljava/lang/String;
return
L0:
aload 0
ldc ""
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mKeyWord Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/search_community_result_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder
dup
aconst_null
invokespecial com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/<init>(Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1;)V
astore 3
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_search_community_result_header I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/ivHeader Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_search_community_result_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_search_community_result_info I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvIntro Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/tv_search_community_result_tag I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvTag Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/getList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
astore 5
aload 5
ifnull L2
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getAvatar()Ljava/lang/String;
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/ivHeader Landroid/widget/ImageView;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/showAvatar(JLjava/lang/String;Landroid/widget/ImageView;)V
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mKeyWord Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_search_community_red I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
astore 6
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mContext Landroid/content/Context;
bipush 114
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvIntro Landroid/widget/TextView;
invokevirtual android/widget/TextView/getTextSize()F
iconst_1
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/getMaxTextCount(Landroid/content/Context;IFI)I
istore 1
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIntro()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mKeyWord Ljava/lang/String;
iload 1
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/extractString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mKeyWord Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_search_community_red I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
astore 6
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvIntro Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getTags()Ljava/util/ArrayList;
astore 6
aload 6
ifnull L5
aload 6
invokevirtual java/util/ArrayList/size()I
ifle L5
aload 6
invokevirtual java/util/ArrayList/size()I
istore 4
iconst_0
istore 1
L6:
iload 1
iload 4
if_icmpge L7
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getTags()Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
astore 6
aload 6
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mKeyWord Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mKeyWord Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_search_community_red I
invokevirtual android/content/res/Resources/getColor(I)I
invokestatic com/nd/schoollife/ui/common/util/TextViewUtils/colorText(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
astore 6
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvTag Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvTag Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L7:
iload 1
iload 4
if_icmpne L9
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvTag Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L9:
aload 2
new com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1
dup
aload 0
aload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getId()J
invokespecial com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$1/<init>(Lcom/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter;J)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder
astore 3
goto L1
L3:
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvIntro Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L4
L8:
iload 1
iconst_1
iadd
istore 1
goto L6
L5:
aload 3
getfield com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter$ViewHolder/tvTag Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L9
.limit locals 7
.limit stack 6
.end method

.method protected isDuplicate(Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
aload 0
aload 1
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
aload 2
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
invokevirtual com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/isDuplicate(Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public updateData(Ljava/util/List;Ljava/lang/String;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;Ljava/lang/String;)V"
aload 0
aload 1
iconst_0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/updateData(Ljava/util/List;Z)V
aload 0
aload 2
invokespecial com/nd/schoollife/ui/community/adapter/SearchCommunityResultAdapter/updateKeyWord(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method
