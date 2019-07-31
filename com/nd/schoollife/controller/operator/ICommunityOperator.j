.bytecode 50.0
.class public abstract interface com/nd/schoollife/controller/operator/ICommunityOperator
.super java/lang/Object

.method public abstract approvalJoinCommunity(JJZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.end method

.method public abstract createCommunity(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.end method

.method public abstract dismissCommunity(JZ)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.end method

.method public abstract editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.end method

.method public abstract getAllCommunityCategory()Lcom/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory;
.end method

.method public abstract getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.end method

.method public abstract getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey;
.end method

.method public abstract getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
.end method

.method public abstract getHotCommunity(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.end method

.method public abstract getMembers(JII)Lcom/nd/schoollife/common/bean/result/ResultUserList;
.end method

.method public abstract getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.end method

.method public abstract getMyManageCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.end method

.method public abstract getRecommendCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.end method

.method public abstract getTags(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityTags;
.end method

.method public abstract joinOrExitCommunity(ZJLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase;
.end method

.method public abstract searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
.end method

.method public abstract updateCommunityAvatar(JLcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;
.end method
