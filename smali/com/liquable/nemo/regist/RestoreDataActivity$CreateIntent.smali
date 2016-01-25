.class public Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;
.super Landroid/content/Intent;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 53
    const-class v0, Lcom/liquable/nemo/regist/RestoreDataActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string/jumbo v0, "profileDto"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->isNeedSync(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->getProfileDto(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method

.method private static getProfileDto(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const-string/jumbo v0, "profileDto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/ProfileDto;

    return-object v0
.end method

.method private static isNeedSync(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->getProfileDto(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    .line 46
    .local v0, "profileDto":Lcom/liquable/nemo/model/account/ProfileDto;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/ProfileDto;->getCreateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
