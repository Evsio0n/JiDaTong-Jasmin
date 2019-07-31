.bytecode 50.0
.class public synchronized com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl
.super com/nd/schoollife/controller/operator/impl/BaseOperator
.implements com/nd/schoollife/controller/operator/ICommunityOperator

.field 'communityCom' Lcom/nd/schoollife/business/com/http/ICommunityCom;

.field private 'resultCommunityInfoBean' Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/controller/operator/impl/BaseOperator/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
aload 0
invokestatic com/nd/schoollife/business/com/SchoolLifeHttpFactory/getInstance()Lcom/nd/schoollife/business/com/SchoolLifeHttpFactory;
invokevirtual com/nd/schoollife/business/com/SchoolLifeHttpFactory/getCommunityCom()Lcom/nd/schoollife/business/com/http/ICommunityCom;
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
return
.limit locals 1
.limit stack 2
.end method

.method public approvalJoinCommunity(JJZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
new com/nd/schoollife/common/bean/SchoolLifeResultBase
dup
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
astore 7
lload 1
lconst_0
lcmp
ifgt L7
L0:
aload 7
sipush 999
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 7
ldc "\u793e\u56e2id\u975e\u6cd5"
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
L1:
aload 7
areturn
L7:
lload 3
lconst_0
lcmp
ifgt L5
L3:
aload 7
sipush 999
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 7
ldc "\u7533\u8bf7\u4ebauid\u975e\u6cd5"
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
L4:
aload 7
areturn
L5:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
lload 3
iload 5
aload 6
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/approvalJoin(JJZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase; 6
astore 6
L6:
aload 6
areturn
L2:
astore 6
aload 7
sipush 999
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 7
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "approvalJoinCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 7
astore 6
goto L6
.limit locals 8
.limit stack 7
.end method

.method public createCommunity(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
ldc ""
astore 6
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u793e\u56e2\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L3:
aload 2
ldc "[a-zA-Z0-9_\u4e00-\u9fa5]*"
invokevirtual java/lang/String/matches(Ljava/lang/String;)Z
ifne L4
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u793e\u56e2\u540d\u79f0\u957f\u5ea6\u8303\u56f4[1,30]\u5b57\uff0c\u5141\u8bb8\u6c49\u5b57\u3001\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u4e0b\u5212\u7ebf"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L4:
aload 3
ifnull L5
aload 3
arraylength
ifgt L6
L5:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u7c7b\u522b\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L6:
aload 4
ifnull L7
aload 4
arraylength
iconst_5
if_icmple L7
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u6807\u7b7e\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc75"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L7:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u7b80\u4ecb\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L0:
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/URL_UPLOAD_AVATAR_TMP Ljava/lang/String;
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
ldc "post"
aconst_null
invokestatic com/nd/schoollife/common/utils/http/FileUploadUtil/uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nd/schoollife/common/utils/http/IFileUploadListener;)Ljava/lang/String;
astore 1
L1:
aload 0
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
aload 1
aload 2
aload 3
aload 4
aload 5
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/createCommunity(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean; 5
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L2:
astore 1
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
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
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
astore 1
goto L1
.limit locals 7
.limit stack 7
.end method

.method public dismissCommunity(JZ)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
new com/nd/schoollife/common/bean/SchoolLifeResultBase
dup
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
astore 4
lload 1
lconst_0
lcmp
ifgt L1
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u793e\u56e2id\u975e\u6cd5"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L1:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
iload 3
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/dismissCommunity(JZ)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase; 3
astore 5
L3:
aload 5
astore 4
L4:
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
goto L4
.limit locals 6
.limit stack 4
.end method

.method public editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
lload 1
lconst_0
lcmp
ifgt L0
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u793e\u56e2id\u975e\u6cd5"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L0:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u56fe\u7247\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L1:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u793e\u56e2\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L2:
aload 4
ldc "[a-zA-Z0-9_\u4e00-\u9fa5]*"
invokevirtual java/lang/String/matches(Ljava/lang/String;)Z
ifne L3
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u793e\u56e2\u540d\u79f0\u957f\u5ea6\u8303\u56f4[1,30]\u5b57\uff0c\u5141\u8bb8\u6c49\u5b57\u3001\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u4e0b\u5212\u7ebf"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L3:
aload 5
ifnull L4
aload 5
arraylength
ifgt L5
L4:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u7c7b\u522b\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L5:
aload 6
ifnull L6
aload 6
arraylength
iconst_5
if_icmple L6
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u6807\u7b7e\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc75"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L6:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
ldc "\u7b80\u4ecb\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
L7:
aload 0
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
aload 3
aload 4
aload 5
aload 6
aload 7
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean; 7
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
.limit locals 8
.limit stack 9
.end method

.method public getAllCommunityCategory()Lcom/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory;
.catch java/lang/Exception from L0 to L1 using L2
new com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/<init>()V
astore 1
L0:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getAllCommunityCategory()Lcom/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory; 0
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 1
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/setResultCode(I)V
aload 1
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getAllCommunityCategory  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 5
lload 1
ldc2_w -1L
lcmp
ifeq L11
lload 1
lconst_0
lcmp
ifgt L11
L0:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u5c0f\u7ec4\u5206\u7c7bID\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L1:
aload 5
areturn
L11:
iload 3
iconst_m1
if_icmpeq L12
iload 3
ifgt L12
L3:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 5
areturn
L12:
iload 4
iconst_m1
if_icmpeq L13
iload 4
ifgt L13
L5:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L6:
aload 5
areturn
L13:
iload 4
bipush 100
if_icmple L9
L7:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L8:
aload 5
areturn
L9:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 4
astore 6
L10:
aload 6
astore 5
L14:
aload 5
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommunityByCategory  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L14
.limit locals 7
.limit stack 5
.end method

.method public getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/<init>()V
astore 3
iload 1
iconst_m1
if_icmpeq L9
iload 1
ifgt L9
L0:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultCode(I)V
aload 3
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L9:
iload 2
iconst_m1
if_icmpeq L10
iload 2
ifgt L10
L3:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultMsg(Ljava/lang/String;)V
L4:
aload 3
areturn
L10:
iload 2
bipush 100
if_icmple L7
L5:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultMsg(Ljava/lang/String;)V
L6:
aload 3
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
iload 1
iload 2
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey; 2
astore 4
L8:
aload 4
astore 3
L11:
aload 3
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommunityHotKey  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
.limit locals 5
.limit stack 3
.end method

.method public getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/<init>()V
astore 3
lload 1
lconst_0
lcmp
ifgt L3
L0:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setResultCode(I)V
aload 3
ldc "\u793e\u56e2id\u975e\u6cd5"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo; 2
astore 4
L4:
aload 4
astore 3
L5:
aload 3
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommunityInfo  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public getHotCommunity(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 5
lload 1
ldc2_w -1L
lcmp
ifeq L11
lload 1
lconst_0
lcmp
ifgt L11
L0:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u955c\u50cf\u7248\u672c\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L1:
aload 5
areturn
L11:
iload 3
iconst_m1
if_icmpeq L12
iload 3
ifgt L12
L3:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 5
areturn
L12:
iload 4
iconst_m1
if_icmpeq L13
iload 4
ifgt L13
L5:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L6:
aload 5
areturn
L13:
iload 4
bipush 100
if_icmple L9
L7:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L8:
aload 5
areturn
L9:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getHotCommunity(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 4
astore 6
L10:
aload 6
astore 5
L14:
aload 5
areturn
L2:
astore 6
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 5
aload 6
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getHotCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L14
.limit locals 7
.limit stack 5
.end method

.method public getMembers(JII)Lcom/nd/schoollife/common/bean/result/ResultUserList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
new com/nd/schoollife/common/bean/result/ResultUserList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultUserList/<init>()V
astore 5
lload 1
lconst_0
lcmp
ifgt L11
L0:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultCode(I)V
aload 5
ldc "\u793e\u56e2id\u975e\u6cd5"
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultMsg(Ljava/lang/String;)V
L1:
aload 5
areturn
L11:
iload 3
iconst_m1
if_icmpeq L12
iload 3
ifgt L12
L3:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultCode(I)V
aload 5
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultMsg(Ljava/lang/String;)V
L4:
aload 5
areturn
L12:
iload 4
iconst_m1
if_icmpeq L13
iload 4
ifgt L13
L5:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultMsg(Ljava/lang/String;)V
L6:
aload 5
areturn
L13:
iload 4
bipush 100
if_icmple L9
L7:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultCode(I)V
aload 5
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultUserList/setResultMsg(Ljava/lang/String;)V
L8:
aload 5
areturn
L9:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
iload 3
iload 4
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getMembers(JII)Lcom/nd/schoollife/common/bean/result/ResultUserList; 4
astore 6
L10:
aload 6
astore 5
L14:
aload 5
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
goto L14
.limit locals 7
.limit stack 5
.end method

.method public getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L25 to L26 using L2
.catch java/lang/Exception from L27 to L28 using L2
.catch java/lang/Exception from L29 to L30 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 4
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 6
iload 1
iconst_m1
if_icmpeq L31
iload 1
ifgt L31
aload 4
astore 3
L0:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L1:
aload 4
astore 3
L3:
aload 4
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 4
areturn
L31:
iload 2
iconst_m1
if_icmpeq L32
iload 2
ifgt L32
aload 4
astore 3
L5:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L6:
aload 4
astore 3
L7:
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L8:
aload 4
areturn
L32:
iload 2
bipush 100
if_icmple L33
aload 4
astore 3
L9:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L10:
aload 4
astore 3
L11:
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L12:
aload 4
areturn
L33:
iconst_0
istore 1
aload 4
astore 3
L13:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L14:
iload 1
iconst_1
iadd
istore 2
aload 4
astore 3
L15:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
iload 2
bipush 100
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
astore 5
L16:
aload 5
ifnull L28
aload 5
astore 3
L17:
aload 6
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L18:
aload 5
astore 3
L19:
aload 6
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setTotal(I)V
L20:
aload 5
astore 3
L21:
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
ifnull L28
L22:
aload 5
astore 3
L23:
aload 7
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L24:
iload 2
bipush 10
if_icmpge L28
aload 5
astore 3
L25:
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 100
if_icmpne L28
L26:
aload 5
astore 4
iload 2
istore 1
aload 5
astore 3
L27:
iload 2
bipush 100
imul
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
if_icmplt L14
L28:
aload 5
astore 3
L29:
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
L30:
aload 6
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyJoinedCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
areturn
.limit locals 8
.limit stack 3
.end method

.method public getMyManageCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L25 to L26 using L2
.catch java/lang/Exception from L27 to L28 using L2
.catch java/lang/Exception from L29 to L30 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 4
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 6
iload 1
iconst_m1
if_icmpeq L31
iload 1
ifgt L31
aload 4
astore 3
L0:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L1:
aload 4
astore 3
L3:
aload 4
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 4
areturn
L31:
iload 2
iconst_m1
if_icmpeq L32
iload 2
ifgt L32
aload 4
astore 3
L5:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L6:
aload 4
astore 3
L7:
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L8:
aload 4
areturn
L32:
iload 2
bipush 100
if_icmple L33
aload 4
astore 3
L9:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L10:
aload 4
astore 3
L11:
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L12:
aload 4
areturn
L33:
iconst_0
istore 1
aload 4
astore 3
L13:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L14:
iload 1
iconst_1
iadd
istore 2
aload 4
astore 3
L15:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
iload 2
bipush 100
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getMyManageCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
astore 5
L16:
aload 5
ifnull L28
aload 5
astore 3
L17:
aload 6
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
L18:
aload 5
astore 3
L19:
aload 6
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setTotal(I)V
L20:
aload 5
astore 3
L21:
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
ifnull L28
L22:
aload 5
astore 3
L23:
aload 7
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L24:
iload 2
bipush 10
if_icmpge L28
aload 5
astore 3
L25:
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 100
if_icmpne L28
L26:
aload 5
astore 4
iload 2
istore 1
aload 5
astore 3
L27:
iload 2
bipush 100
imul
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
if_icmplt L14
L28:
aload 5
astore 3
L29:
aload 6
aload 7
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setList(Ljava/util/List;)V
L30:
aload 6
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getMyManageCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
areturn
.limit locals 8
.limit stack 3
.end method

.method public getRecommendCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 3
iload 1
iconst_m1
if_icmpeq L9
iload 1
ifgt L9
L0:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 3
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L9:
iload 2
iconst_m1
if_icmpeq L10
iload 2
ifgt L10
L3:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 3
areturn
L10:
iload 2
bipush 100
if_icmple L7
L5:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L6:
aload 3
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
iload 1
iload 2
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getRecommendCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
astore 4
L8:
aload 4
astore 3
L11:
aload 3
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getRecommendCommunity -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
.limit locals 5
.limit stack 3
.end method

.method public getTags(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityTags;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
new com/nd/schoollife/common/bean/result/ResultGetCommunityTags
dup
invokespecial com/nd/schoollife/common/bean/result/ResultGetCommunityTags/<init>()V
astore 3
iload 1
iconst_m1
if_icmpeq L9
iload 1
ifgt L9
L0:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultCode(I)V
aload 3
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultMsg(Ljava/lang/String;)V
L1:
aload 3
areturn
L9:
iload 2
iconst_m1
if_icmpeq L10
iload 2
ifgt L10
L3:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultMsg(Ljava/lang/String;)V
L4:
aload 3
areturn
L10:
iload 2
bipush 100
if_icmple L7
L5:
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultCode(I)V
aload 3
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultMsg(Ljava/lang/String;)V
L6:
aload 3
areturn
L7:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
iload 1
iload 2
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/getTags(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityTags; 2
astore 4
L8:
aload 4
astore 3
L11:
aload 3
areturn
L2:
astore 4
aload 3
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultCode(I)V
aload 3
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getTags  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L11
.limit locals 5
.limit stack 3
.end method

.method public joinOrExitCommunity(ZJLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
new com/nd/schoollife/common/bean/SchoolLifeResultBase
dup
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
astore 5
lload 2
lconst_0
lcmp
ifgt L3
L0:
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 5
ldc "\u793e\u56e2id\u975e\u6cd5"
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
L1:
aload 5
areturn
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 2
iload 1
aload 4
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/joinOrExitCommunity(JZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase; 4
astore 4
L4:
aload 4
areturn
L2:
astore 4
aload 5
sipush 999
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultCode(I)V
aload 5
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "joinOrExitCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 5
astore 4
goto L4
.limit locals 6
.limit stack 5
.end method

.method public searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
new com/nd/schoollife/common/bean/result/ResultCommunityInfoList
dup
invokespecial com/nd/schoollife/common/bean/result/ResultCommunityInfoList/<init>()V
astore 4
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L11
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 4
ldc "\u641c\u7d22\u7684\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L1:
aload 4
areturn
L11:
iload 2
iconst_m1
if_icmpeq L12
iload 2
ifgt L12
L3:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 4
ldc "\u9875\u7801\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L4:
aload 4
areturn
L12:
iload 3
iconst_m1
if_icmpeq L13
iload 3
ifgt L13
L5:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5c0f\u4e8e\u7b49\u4e8e0"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L6:
aload 4
areturn
L13:
iload 3
bipush 100
if_icmple L9
L7:
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 4
ldc "\u6bcf\u9875\u7684\u6761\u6570\u4e0d\u80fd\u5927\u4e8e100"
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
L8:
aload 4
areturn
L9:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
aload 1
iload 2
iload 3
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 3
astore 1
L10:
aload 1
areturn
L2:
astore 1
aload 4
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultCode(I)V
aload 4
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "searchCommunity  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 4
astore 1
goto L10
.limit locals 5
.limit stack 4
.end method

.method public updateCommunityAvatar(JLcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.catch java/lang/Exception from L0 to L1 using L2
aconst_null
astore 6
aload 0
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/common/constant/SchoolLifeHttpConfig/SERVER_DOMAIN Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "communities/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "/avatar"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
ldc "post"
aconst_null
invokestatic com/nd/schoollife/common/utils/http/FileUploadUtil/uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nd/schoollife/common/utils/http/IFileUploadListener;)Ljava/lang/String;
astore 4
L1:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getCategory()[Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
astore 7
aload 7
arraylength
newarray long
astore 6
iconst_0
istore 5
L4:
iload 5
aload 7
arraylength
if_icmpge L5
aload 6
iload 5
aload 7
iload 5
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
lastore
iload 5
iconst_1
iadd
istore 5
goto L4
L2:
astore 4
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
sipush 999
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
ldc "CommunityOperatorImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "editCommunityInfo  -- resultCode : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " -- resultMsg : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getResultMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 6
astore 4
goto L1
L5:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getTags()[Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
astore 7
aload 7
arraylength
newarray long
astore 8
iconst_0
istore 5
L6:
iload 5
aload 7
arraylength
if_icmpge L7
aload 8
iload 5
aload 7
iload 5
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
lastore
iload 5
iconst_1
iadd
istore 5
goto L6
L7:
aload 0
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/communityCom Lcom/nd/schoollife/business/com/http/ICommunityCom;
lload 1
aload 4
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getName()Ljava/lang/String;
aload 6
aload 8
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getIntro()Ljava/lang/String;
invokeinterface com/nd/schoollife/business/com/http/ICommunityCom/editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean; 7
putfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
L3:
aload 0
getfield com/nd/schoollife/controller/operator/impl/CommunityOperatorImpl/resultCommunityInfoBean Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
areturn
.limit locals 9
.limit stack 9
.end method
