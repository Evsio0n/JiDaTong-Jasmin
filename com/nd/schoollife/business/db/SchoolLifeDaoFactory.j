.bytecode 50.0
.class public final synchronized com/nd/schoollife/business/db/SchoolLifeDaoFactory
.super java/lang/Object

.field private static 'instance' Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;

.field private static 'mSquareBannerDao' Lcom/nd/schoollife/business/db/dao/SquareBannerDao;

.field private static 'mSquareCommunitiesDao' Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;

.field private static 'mSquarePostsDao' Lcom/nd/schoollife/business/db/dao/SquarePostsDao;

.field private static 'mSquareTeamDao' Lcom/nd/schoollife/business/db/dao/SquareTeamDao;

.method static <clinit>()V
new com/nd/schoollife/business/db/SchoolLifeDaoFactory
dup
invokespecial com/nd/schoollife/business/db/SchoolLifeDaoFactory/<init>()V
putstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/instance Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/instance Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getSquareBannerDao()Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareBannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
ifnonnull L0
new com/nd/schoollife/business/db/dao/impl/SquareBannerDaoImpl
dup
invokespecial com/nd/schoollife/business/db/dao/impl/SquareBannerDaoImpl/<init>()V
putstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareBannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
L0:
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareBannerDao Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSquareCommunitiesDao()Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareCommunitiesDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
ifnonnull L0
new com/nd/schoollife/business/db/dao/impl/SquareCommunitiesDaoImpl
dup
invokespecial com/nd/schoollife/business/db/dao/impl/SquareCommunitiesDaoImpl/<init>()V
putstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareCommunitiesDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
L0:
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareCommunitiesDao Lcom/nd/schoollife/business/db/dao/SquareCommunitiesDao;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSquarePostsDao()Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquarePostsDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
ifnonnull L0
new com/nd/schoollife/business/db/dao/impl/SquarePostsDaoImpl
dup
invokespecial com/nd/schoollife/business/db/dao/impl/SquarePostsDaoImpl/<init>()V
putstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquarePostsDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
L0:
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquarePostsDao Lcom/nd/schoollife/business/db/dao/SquarePostsDao;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getSquareTeamDao()Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareTeamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
ifnonnull L0
new com/nd/schoollife/business/db/dao/impl/SquareTeamDaoImpl
dup
invokespecial com/nd/schoollife/business/db/dao/impl/SquareTeamDaoImpl/<init>()V
putstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareTeamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
L0:
getstatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/mSquareTeamDao Lcom/nd/schoollife/business/db/dao/SquareTeamDao;
areturn
.limit locals 1
.limit stack 2
.end method
