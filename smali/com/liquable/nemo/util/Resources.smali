.class public Lcom/liquable/nemo/util/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i18nKey"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 20
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 23
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i18nKey"    # Ljava/lang/String;
    .param p2, "i18nValues"    # [Ljava/lang/Object;

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 12
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 15
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
