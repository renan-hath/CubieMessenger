.class public Lcom/aviary/android/feather/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public static checkBits(II)Z
    .locals 1
    .param p0, "status"    # I
    .param p1, "checkBit"    # I

    .prologue
    .line 23
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createModalLoaderToast(Landroid/content/Context;)Lcom/aviary/android/feather/widget/AviaryToast;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget v1, Lcom/aviary/android/feather/R$layout;->aviary_modal_progress_view:I

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryToast;->make(Landroid/content/Context;II)Lcom/aviary/android/feather/widget/AviaryToast;

    move-result-object v0

    .line 56
    .local v0, "mToastLoader":Lcom/aviary/android/feather/widget/AviaryToast;
    return-object v0
.end method

.method public static makeCustomToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_toast_layout:I

    invoke-static {p0, v0}, Lcom/aviary/android/feather/utils/UIUtils;->makeCustomToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeCustomToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 45
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 46
    return-object v0
.end method
