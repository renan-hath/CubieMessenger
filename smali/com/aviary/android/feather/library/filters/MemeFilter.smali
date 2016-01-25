.class public Lcom/aviary/android/feather/library/filters/MemeFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "MemeFilter.java"


# instance fields
.field private mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "memegen"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    .line 14
    return-void
.end method


# virtual methods
.method public setAssetFontName(Ljava/lang/String;)V
    .locals 4
    .param p1, "fontname"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "fontname"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "assets/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "bottomtext"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public setFillColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "fillcolor"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 30
    return-void
.end method

.method public setPaddingBottom(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "paddingbottom"

    invoke-virtual {v0, v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 46
    return-void
.end method

.method public setPaddingTop(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "paddingtop"

    invoke-virtual {v0, v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 42
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "outlinecolor"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaColorParameter;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 34
    return-void
.end method

.method public setTextSize(D)V
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 25
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "textsize"

    invoke-virtual {v0, v1, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;D)V

    .line 26
    return-void
.end method

.method public setTopText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/MemeFilter;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "toptext"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
