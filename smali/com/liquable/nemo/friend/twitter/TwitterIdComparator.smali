.class public Lcom/liquable/nemo/friend/twitter/TwitterIdComparator;
.super Ljava/lang/Object;
.source "TwitterIdComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/liquable/nemo/friend/twitter/TwitterId;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/liquable/nemo/friend/twitter/TwitterId;Lcom/liquable/nemo/friend/twitter/TwitterId;)I
    .locals 7
    .param p1, "lhs"    # Lcom/liquable/nemo/friend/twitter/TwitterId;
    .param p2, "rhs"    # Lcom/liquable/nemo/friend/twitter/TwitterId;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 9
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterId;->isUseCubie()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/twitter/TwitterId;->isUseCubie()Z

    move-result v6

    if-nez v6, :cond_1

    .line 16
    :cond_0
    :goto_0
    return v4

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterId;->isUseCubie()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/twitter/TwitterId;->isUseCubie()Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 12
    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterId;->getTwitterId()J

    move-result-wide v2

    .line 15
    .local v2, "thisValue":J
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/twitter/TwitterId;->getTwitterId()J

    move-result-wide v0

    .line 16
    .local v0, "thatValue":J
    cmp-long v6, v2, v0

    if-ltz v6, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/liquable/nemo/friend/twitter/TwitterId;

    check-cast p2, Lcom/liquable/nemo/friend/twitter/TwitterId;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/friend/twitter/TwitterIdComparator;->compare(Lcom/liquable/nemo/friend/twitter/TwitterId;Lcom/liquable/nemo/friend/twitter/TwitterId;)I

    move-result v0

    return v0
.end method
