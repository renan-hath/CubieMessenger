.class public Lcom/liquable/nemo/forum/model/FavoriteBoardExceedLimitException;
.super Lcom/liquable/nemo/model/DomainException;
.source "FavoriteBoardExceedLimitException.java"


# static fields
.field private static final serialVersionUID:J = -0x244b1bb8dfcc00bbL


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/model/DomainException;-><init>([Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "favorite_board_reach_limit"

    return-object v0
.end method
