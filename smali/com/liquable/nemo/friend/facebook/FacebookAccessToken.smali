.class public Lcom/liquable/nemo/friend/facebook/FacebookAccessToken;
.super Ljava/lang/Object;
.source "FacebookAccessToken.java"


# instance fields
.field public final accessExpires:J

.field public final accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "accessExpires"    # J

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookAccessToken;->accessToken:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/liquable/nemo/friend/facebook/FacebookAccessToken;->accessExpires:J

    .line 11
    return-void
.end method
