.class Lcom/liquable/nemo/profile/ProfileContactIcon;
.super Lcom/liquable/nemo/friend/model/ContactIcon;
.source "ProfileContactIcon.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "photoId"    # J

    .prologue
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/model/ContactIcon;-><init>(Ljava/lang/Long;)V

    .line 10
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f0202a9

    return v0
.end method
