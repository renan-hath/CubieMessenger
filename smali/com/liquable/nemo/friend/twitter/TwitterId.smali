.class public Lcom/liquable/nemo/friend/twitter/TwitterId;
.super Ljava/lang/Object;
.source "TwitterId.java"


# instance fields
.field private final twitterId:J

.field private final useCubie:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 0
    .param p1, "twitterId"    # J
    .param p3, "useCubie"    # Z

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterId;->twitterId:J

    .line 11
    iput-boolean p3, p0, Lcom/liquable/nemo/friend/twitter/TwitterId;->useCubie:Z

    .line 12
    return-void
.end method


# virtual methods
.method public getTwitterId()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterId;->twitterId:J

    return-wide v0
.end method

.method public isUseCubie()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterId;->useCubie:Z

    return v0
.end method
