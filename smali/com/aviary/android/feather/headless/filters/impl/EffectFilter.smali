.class public Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "EffectFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "effects"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>([Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public setEffectName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public final setMoaLiteEffectContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "jsonstring"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
