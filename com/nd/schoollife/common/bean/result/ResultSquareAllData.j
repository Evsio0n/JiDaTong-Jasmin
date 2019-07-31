.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultSquareAllData
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 3015922166914670118L


.field private 'banner' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;"

.field private 'communities' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"

.field private 'posts' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"

.field private 'teams' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addBanner(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)V
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSquareAllData/banner Ljava/util/List;
iconst_0
aload 1
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public getBanner()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSquareAllData/banner Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCommunities()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSquareAllData/communities Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPosts()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSquareAllData/posts Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTeams()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSquareAllData/teams Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setBanner(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSquareAllData/banner Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setCommunities(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSquareAllData/communities Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setPosts(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSquareAllData/posts Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTeams(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSquareAllData/teams Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
