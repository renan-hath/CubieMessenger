.class public Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeToolFilter;
.source "ColorSplashFilter.java"


# instance fields
.field private strokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v0, "colorsplash"

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;->ColorSplash:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;-><init>(Ljava/lang/String;Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->strokes:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    const-string/jumbo v1, "strokes"

    iget-object v2, p0, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->strokes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/util/Collection;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addStrokeData(Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;)V
    .locals 1
    .param p1, "data"    # Lcom/aviary/android/feather/headless/moa/MoaStrokeParameter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->strokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
