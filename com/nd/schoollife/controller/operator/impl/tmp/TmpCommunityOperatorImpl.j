.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl
.super com/nd/schoollife/controller/operator/impl/BaseOperator
.implements com/nd/schoollife/controller/operator/ICommunityOperator

.field 'communityCom' Lcom/nd/schoollife/business/com/http/ICommunityCom;

.field private 'resultCommunityInfoBean' Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/controller/operator/impl/BaseOperator/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
aload 0
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
invokestatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/getInstance()Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;
invokevirtual com/nd/schoollife/business/com/SchoolLifeHttpFactory/getCommunityCom()Lcom/nd/schoollife/business/com/http/ICommunityCom;
putfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
return
.limit locals 1
.limit stack 3
.end method

.method public approvalJoinCommunity(JJZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
aconst_null
areturn
.limit locals 7
.limit stack 1
.end method

.method public createCommunity(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
L1:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L2:
astore 1
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "createCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L1
.limit locals 6
.limit stack 3
.end method

.method public dismissCommunity(JZ)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/schoollife/common/bean/SchoolLifeResultBase
dup
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
astore 4
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 4
sipush 200
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
L1:
aload 4
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "dismissCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
L1:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L2:
astore 3
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "editCommunityInfo  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L1
.limit locals 8
.limit stack 3
.end method

.method public getAllCommunityCategory()Lcom/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
new com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/<init>()V
astore 2
L0:
aload 2
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/setResultCode(I)V
ldc2_w 500L
invokestatic java/lang/Thread/sleep(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L1:
iconst_0
istore 1
L7:
iload 1
iconst_3
if_icmpge L5
L3:
new com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/<init>()V
astore 4
aload 4
iload 1
i2l
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setId(J)V
aload 4
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "\u5b66\u751f\u793e\u56e2"
aastore
dup
iconst_1
ldc "\u5b66\u751f\u7ec4\u7ec7"
aastore
dup
iconst_2
ldc "\u5176\u5b83"
aastore
iload 1
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setName(Ljava/lang/String;)V
aload 4
ldc "\u6ca1\u6709\u5440"
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setIntro(Ljava/lang/String;)V
aload 4
aconst_null
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setAvatar(Ljava/lang/String;)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L7
L5:
aload 2
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/setList(Ljava/util/List;)V
aload 2
iconst_4
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/setTotal(I)V
L6:
aload 2
areturn
L2:
astore 3
aload 2
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/setResultCode(I)V
aload 2
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getAllCommunityCategory  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 5
.limit stack 5
.end method

.method public getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
L1:
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 6
aload 6
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
iload 3
iconst_1
iconst_2
invokestatic com/nd/schoollife/common/utils/ui/CalcUtil/getIntRandomInRange(II)I
irem
ifeq L3
aload 6
sipush 400
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 6
areturn
L2:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
iconst_0
istore 5
L4:
iload 5
iload 4
if_icmpge L5
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 8
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
iconst_1
isub
iload 4
imul
iload 5
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 8
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 8
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 8
iconst_3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 8
iload 5
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setMembers_total(I)V
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 5
iconst_1
iadd
istore 5
goto L4
L5:
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
aload 6
areturn
.limit locals 9
.limit stack 4
.end method

.method public getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc2_w 500L
invokestatic java/lang/Thread/sleep(J)V
L1:
new com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/<init>()V
astore 3
aload 3
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultCode(I)V
bipush 10
anewarray java/lang/String
astore 4
aload 4
iconst_0
ldc "\u7bee\u7403"
aastore
aload 4
iconst_1
ldc "\u597d"
aastore
aload 4
iconst_2
ldc "\u7f8e\u672f"
aastore
aload 4
iconst_3
ldc "\u5f69\u5986"
aastore
aload 4
iconst_4
ldc "\u7535\u5f71"
aastore
aload 4
iconst_5
ldc "\u8fd9\u4e2a\u5173\u952e\u8bcd\u771f\u957f"
aastore
aload 4
bipush 6
ldc "\u5fd7\u613f\u8005"
aastore
aload 4
bipush 7
ldc "\u624b\u5de5\u7eb8\u827a"
aastore
aload 4
bipush 8
ldc "\u771f\u7684\u5417"
aastore
aload 4
bipush 9
ldc "\u8fd9\u4e2a\u8d85\u8fc77\u4e2a\u5b57\u5566\u5566\u5566"
aastore
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 1
L3:
iload 1
aload 4
arraylength
if_icmpge L4
new com/nd/schoollife/common/bean/structure/HotKeyInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/HotKeyInfoBean/<init>()V
astore 6
aload 6
aload 4
iload 1
aaload
invokevirtual com/nd/schoollife/common/bean/structure/HotKeyInfoBean/setKeywords(Ljava/lang/String;)V
aload 5
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L4:
aload 3
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setList(Ljava/util/ArrayList;)V
aload 3
areturn
.limit locals 7
.limit stack 3
.end method

.method public getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
new com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/<init>()V
astore 4
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 4
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setResultCode(I)V
aload 4
getstatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/CREATOR Lcom/nd/schoollife/common/enums/RoleAuthority$CommunityRole;
invokevirtual com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/val()I
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setRole(I)V
iconst_1
anewarray com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
astore 5
L1:
iconst_0
istore 3
L11:
iload 3
iconst_1
if_icmpge L5
L3:
aload 5
iload 3
new com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/<init>()V
aastore
aload 5
iload 3
aaload
ldc "\u5356\u83ca\u82b1\u7684"
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/setName(Ljava/lang/String;)V
L4:
iload 3
iconst_1
iadd
istore 3
goto L11
L5:
aload 4
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setCategory([Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)V
iconst_5
anewarray com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
astore 5
L6:
iconst_0
istore 3
L12:
iload 3
iconst_5
if_icmpge L9
L7:
aload 5
iload 3
new com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/<init>()V
aastore
aload 5
iload 3
aaload
iload 3
i2l
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setId(J)V
aload 5
iload 3
aaload
iconst_5
anewarray java/lang/String
dup
iconst_0
ldc "\u841d\u8389"
aastore
dup
iconst_1
ldc "\u5fa1\u59d0"
aastore
dup
iconst_2
ldc "\u6e23\u7537"
aastore
dup
iconst_3
ldc "\u53e4\u5178\u6587\u5b66"
aastore
dup
iconst_4
ldc "\u6302\u6811\u732b"
aastore
iload 3
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setName(Ljava/lang/String;)V
L8:
iload 3
iconst_1
iadd
istore 3
goto L12
L9:
aload 4
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setTags([Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)V
aload 4
ldc "\u8282\u64cd\u4e00\u7ec4"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setName(Ljava/lang/String;)V
aload 4
aconst_null
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setAvatar(Ljava/lang/String;)V
aload 4
ldc "\u8282\u64cd\u5728\u6211\u4eec\u7684\u773c\u91cc\uff0c\u5c31\u548c\u8336\u53f6\u86cb\u4e00\u6837\u4fbf\u5b9c"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setIntro(Ljava/lang/String;)V
L10:
aload 4
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommunityInfo  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 4
areturn
.limit locals 6
.limit stack 5
.end method

.method public getHotCommunity(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
.catch java/lang/InterruptedException from L5 to L6 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 6
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 6
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
iload 3
iconst_1
iconst_2
invokestatic com/nd/schoollife/common/utils/ui/CalcUtil/getIntRandomInRange(II)I
irem
ifeq L7
aload 6
sipush 400
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L1:
aload 6
areturn
L8:
iload 5
iload 4
if_icmpge L5
L3:
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 8
aload 8
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 8
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 8
iconst_3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 8
bipush 108
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setMembers_total(I)V
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u540d\u5b57"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
iconst_1
isub
iload 4
imul
iload 5
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 5
iconst_1
iadd
istore 5
goto L8
L5:
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
L6:
aload 6
areturn
L2:
astore 7
aload 7
invokevirtual java/lang/InterruptedException/printStackTrace()V
aload 6
areturn
L7:
iconst_0
istore 5
goto L8
.limit locals 9
.limit stack 4
.end method

.method public getMembers(JII)Lcom/nd/schoollife/common/bean/result/ResultUserList;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/schoollife/common/bean/result/ResultUserList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultUserList/<init>()V
astore 5
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/tmp/TmpCommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getMembers(JII)Lcom/nd/schoollife/common/bean/result/ResultUserList; 4
astore 6
L1:
aload 6
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMembers  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 5
areturn
.limit locals 7
.limit stack 5
.end method

.method public getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 3
aload 3
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 5
aload 5
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 5
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 5
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 5
iconst_1
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 4
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 4
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
aload 3
areturn
.limit locals 6
.limit stack 2
.end method

.method public getMyManageCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 3
aload 3
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 5
aload 5
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 5
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 5
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 5
iconst_3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 4
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 4
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
aload 3
areturn
.limit locals 6
.limit stack 2
.end method

.method public getRecommendCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L2
.catch java/lang/InterruptedException from L5 to L6 using L2
.catch java/lang/InterruptedException from L6 to L7 using L2
.catch java/lang/InterruptedException from L8 to L9 using L2
.catch java/lang/InterruptedException from L10 to L11 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 4
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 4
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L1:
iconst_0
istore 3
L12:
iload 3
iload 2
if_icmpge L10
L3:
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 6
aload 6
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb\u8d85\u957f\u7b80\u4ecb"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 6
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 6
iconst_3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u540d\u5b57"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
iconst_1
isub
iload 2
imul
iload 3
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
new com/nd/schoollife/common/bean/structure/RecommandSourceBean
dup
invokespecial com/nd/schoollife/common/bean/structure/RecommandSourceBean/<init>()V
astore 7
L4:
iload 3
iconst_3
irem
ifne L13
L5:
aload 7
ldc "user"
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/setType(Ljava/lang/String;)V
new com/nd/schoollife/common/bean/structure/CommunityUserInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityUserInfoBean/<init>()V
astore 8
aload 8
ldc2_w 36917L
invokevirtual com/nd/schoollife/common/bean/structure/CommunityUserInfoBean/setUid(J)V
aload 8
ldc "\u5357\u5357\u5b89"
invokevirtual com/nd/schoollife/common/bean/structure/CommunityUserInfoBean/setName(Ljava/lang/String;)V
new com/nd/android/forumsdk/business/bean/structure/FileInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/structure/FileInfoBean/<init>()V
ldc2_w 222222L
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/setFid(J)V
aload 8
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/structure/CommunityUserInfoBean/setAvatar(Ljava/lang/String;)V
aload 7
aload 8
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/setUser(Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;)V
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setSource(Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;)V
L6:
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
iload 3
iconst_1
iadd
istore 3
goto L12
L13:
iload 3
iconst_3
irem
iconst_1
if_icmpne L6
L8:
aload 7
ldc "tags"
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/setType(Ljava/lang/String;)V
aload 7
ldc "\u7bee\u7403"
invokevirtual com/nd/schoollife/common/bean/structure/RecommandSourceBean/setTag(Ljava/lang/String;)V
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setSource(Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;)V
L9:
goto L6
L2:
astore 5
aload 5
invokevirtual java/lang/InterruptedException/printStackTrace()V
aload 4
areturn
L10:
aload 4
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
L11:
aload 4
areturn
.limit locals 9
.limit stack 4
.end method

.method public getTags(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityTags;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
new com/nd/schoollife/common/bean/result/ResultGetCommunityTags
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetCommunityTags/<init>()V
astore 7
L0:
aload 7
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 7
aload 8
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setList(Ljava/util/List;)V
aload 8
invokeinterface java/util/List/clear()V 0
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 9
aload 7
iload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setTotal(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
bipush 20
anewarray java/lang/String
dup
iconst_0
ldc "\u8db3\u7403"
aastore
dup
iconst_1
ldc "\u7bee\u7403"
aastore
dup
iconst_2
ldc "\u4e52\u4e53\u7403"
aastore
dup
iconst_3
ldc "\u7fbd\u6bdb\u7403"
aastore
dup
iconst_4
ldc "\u7f51\u7403 "
aastore
dup
iconst_5
ldc "\u8dd1\u6b65"
aastore
dup
bipush 6
ldc "\u8857\u821e"
aastore
dup
bipush 7
ldc "\u81ea\u884c\u8f66"
aastore
dup
bipush 8
ldc "\u5065\u7f8e\u64cd"
aastore
dup
bipush 9
ldc "\u6b66\u672f "
aastore
dup
bipush 10
ldc "\u8f6e\u6ed1"
aastore
dup
bipush 11
ldc "\u745c\u4f3d"
aastore
dup
bipush 12
ldc "\u6865\u724c"
aastore
dup
bipush 13
ldc "\u68cb\u7c7b"
aastore
dup
bipush 14
ldc "\u684c\u6e38"
aastore
dup
bipush 15
ldc "\u7a7a\u624b\u9053 "
aastore
dup
bipush 16
ldc "\u8dc6\u62f3\u9053"
aastore
dup
bipush 17
ldc "\u6ed1\u677f"
aastore
dup
bipush 18
ldc "\u684c\u7403"
aastore
dup
bipush 19
ldc "\u6392\u7403"
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 10
bipush 19
anewarray java/lang/String
dup
iconst_0
ldc "\u5409\u4ed6"
aastore
dup
iconst_1
ldc "\u94a2\u7434"
aastore
dup
iconst_2
ldc "\u5c0f\u63d0\u7434"
aastore
dup
iconst_3
ldc "\u4e50\u961f"
aastore
dup
iconst_4
ldc "\u56fd\u753b"
aastore
dup
iconst_5
ldc "\u6cb9\u753b"
aastore
dup
bipush 6
ldc "\u6c34\u5f69\u753b"
aastore
dup
bipush 7
ldc "\u6444\u5f71"
aastore
dup
bipush 8
ldc "\u4e66\u6cd5"
aastore
dup
bipush 9
ldc "\u96d5\u523b"
aastore
dup
bipush 10
ldc "\u5408\u5531 "
aastore
dup
bipush 11
ldc "\u6e05\u5531"
aastore
dup
bipush 12
ldc "\u53e3\u7434"
aastore
dup
bipush 13
ldc "\u7235\u58eb"
aastore
dup
bipush 14
ldc "\u62c9\u4e01\u821e"
aastore
dup
bipush 15
ldc "\u4ea4\u8c0a\u821e "
aastore
dup
bipush 16
ldc "\u914d\u97f3"
aastore
dup
bipush 17
ldc "\u8bbe\u8ba1"
aastore
dup
bipush 18
ldc "\u9b54\u672f"
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 10
bipush 11
anewarray java/lang/String
dup
iconst_0
ldc "\u52a8\u6f2b"
aastore
dup
iconst_1
ldc "\u6587\u5b66"
aastore
dup
iconst_2
ldc "\u8bdd\u5267"
aastore
dup
iconst_3
ldc "\u620f\u5267"
aastore
dup
iconst_4
ldc "\u97f3\u4e50\u5267"
aastore
dup
iconst_5
ldc "\u5fc3\u7406\u5267"
aastore
dup
bipush 6
ldc "\u5f71\u8bc4"
aastore
dup
bipush 7
ldc "\u7535\u5f71"
aastore
dup
bipush 8
ldc "\u8bd7\u6b4c"
aastore
dup
bipush 9
ldc "\u519b\u4e8b"
aastore
dup
bipush 10
ldc "\u6c7d\u8f66"
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 10
bipush 7
anewarray java/lang/String
dup
iconst_0
ldc "\u6cd5\u5b66"
aastore
dup
iconst_1
ldc "\u7406\u8bba"
aastore
dup
iconst_2
ldc "\u82f1\u8bed"
aastore
dup
iconst_3
ldc "\u53e4\u5178\u6587\u5b66"
aastore
dup
iconst_4
ldc "\u624b\u8bed "
aastore
dup
iconst_5
ldc "\u5546\u8d38"
aastore
dup
bipush 6
ldc "\u7406\u8d22"
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 10
bipush 6
anewarray java/lang/String
dup
iconst_0
ldc "\u8ba1\u7b97\u673a"
aastore
dup
iconst_1
ldc "\u8f6f\u4ef6"
aastore
dup
iconst_2
ldc "\u786c\u4ef6"
aastore
dup
iconst_3
ldc "ACM"
aastore
dup
iconst_4
ldc "\u673a\u5668\u4eba"
aastore
dup
iconst_5
ldc "\u5929\u6587"
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 10
bipush 14
anewarray java/lang/String
dup
iconst_0
ldc "\u521b\u4e1a"
aastore
dup
iconst_1
ldc "\u8fa9\u8bba"
aastore
dup
iconst_2
ldc "\u5fd7\u613f\u8005"
aastore
dup
iconst_3
ldc "\u73af\u4fdd"
aastore
dup
iconst_4
ldc "\u7231\u5fc3"
aastore
dup
iconst_5
ldc "\u8bb0\u8005"
aastore
dup
bipush 6
ldc "\u6a21\u8054"
aastore
dup
bipush 7
ldc "\u7f8e\u98df"
aastore
dup
bipush 8
ldc "\u65c5\u6e38"
aastore
dup
bipush 9
ldc "\u517b\u751f"
aastore
dup
bipush 10
ldc "\u56ed\u827a"
aastore
dup
bipush 11
ldc "\u624b\u5de5"
aastore
dup
bipush 12
ldc "\u70d8\u7119"
aastore
dup
bipush 13
ldc "\u5341\u5b57\u7ee3"
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
iconst_0
istore 4
goto L11
L12:
iload 1
istore 4
iload 3
bipush 6
if_icmpge L11
L3:
aload 9
aload 10
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
arraylength
invokevirtual java/util/Random/nextInt(I)I
istore 6
L4:
iconst_0
istore 5
L5:
new com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/<init>()V
astore 11
aload 11
aload 10
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iload 6
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setName(Ljava/lang/String;)V
L6:
iconst_0
istore 4
L13:
iload 4
iload 3
if_icmpge L9
L7:
iload 5
aload 10
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
arraylength
iadd
istore 5
L8:
iload 4
iconst_1
iadd
istore 4
goto L13
L9:
aload 11
iload 5
iload 6
iadd
i2l
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setId(J)V
aload 8
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L10:
iload 1
iconst_1
iadd
istore 1
iload 3
iconst_1
iadd
istore 3
goto L12
L2:
astore 8
aload 7
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultCode(I)V
aload 7
aload 8
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getTags  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
L14:
aload 7
areturn
L11:
iload 4
iload 2
if_icmpge L14
iconst_0
istore 3
iload 4
istore 1
goto L12
.limit locals 12
.limit stack 5
.end method

.method public joinOrExitCommunity(ZJLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/schoollife/common/bean/SchoolLifeResultBase
dup
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
astore 4
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
aload 4
sipush 200
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
L1:
aload 4
areturn
L2:
astore 5
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 4
aload 5
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "joinOrExitCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc2_w 1000L
invokestatic java/lang/Thread/sleep(J)V
L1:
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 5
aload 5
sipush 200
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
ldc "0"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
iconst_0
istore 3
L4:
iconst_0
istore 4
L5:
iload 4
iload 3
if_icmpge L6
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 1
aload 1
ldc "\u798f\u8f6f\u7bee\u7403\u793e\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57\u8d85\u957f\u540d\u5b57"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setName(Ljava/lang/String;)V
aload 1
ldc "\u56fd\u5bb6\u516c\u52a1\u5458\u8003\u8bd5\uff0c\u6307\u4e2d\u592e\u3001\u56fd\u5bb6\u673a\u5173\u516c\u52a1\u5458\u8003\u8bd5\uff0c\u65f6\u95f4\u76f8\u5bf9\u6bd4\u8f83\u56fa\u5b9a\uff0c\u4e00\u822c\u96c6\u4e2d\u572810-11\u6708\u4efd\uff0c\u7b80\u79f0\u201c\u56fd\u8003\u201d\u3002\u56fd\u8003\u662f\u56fd\u5bb6\u90e8\u3001\u59d4\u3001\u7f72\u3001\u603b\u5c40\u62db\u8003\u5728\u4e2d\u592e\u56fd\u5bb6\u673a\u5173\u7684\u5de5\u4f5c\u4eba\u5458\u7684\u4e00\u79cd\u65b9\u5f0f\uff0c\u62db\u8003\u6761\u4ef6\u76f8\u5bf9\u6bd4\u8f83\u82db\u523b\u3001\u4e25\u683c\uff0c\u4e00\u822c\u5747\u8981\u6c42\u5168\u65e5\u5236\u672c\u79d1\u5e94\u5c4a\u3001\u5386\u5c4a\u6bd5\u4e1a\u751f\uff0c\u90e8\u5206\u804c\u4f4d\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setIntro(Ljava/lang/String;)V
aload 1
ldc "http://quc.qhimg.com/dm/180_180_100/t017965e53d0b1cb18f.jpg"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setAvatar(Ljava/lang/String;)V
aload 1
iconst_3
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setRole(I)V
new com/nd/schoollife/common/bean/structure/CommunityTagInfoBean
dup
invokespecial com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/<init>()V
astore 7
aload 7
ldc2_w 333L
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setId(J)V
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u52a8\u6f2b"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
iconst_1
isub
iload 3
imul
iload 4
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/setName(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 8
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
aload 8
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setTags(Ljava/util/ArrayList;)V
aload 6
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 4
iconst_1
iadd
istore 4
goto L5
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L3:
ldc "1"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
iconst_1
istore 3
goto L4
L7:
ldc "2"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L4
iconst_5
istore 3
goto L4
L6:
aload 5
aload 6
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
aload 5
areturn
.limit locals 9
.limit stack 4
.end method

.method public updateCommunityAvatar(JLcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aconst_null
areturn
.limit locals 5
.limit stack 1
.end method
