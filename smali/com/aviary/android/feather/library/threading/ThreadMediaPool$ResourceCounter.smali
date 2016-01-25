.class Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;
.super Ljava/lang/Object;
.source "ThreadMediaPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/threading/ThreadMediaPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceCounter"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p1, p0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;->value:I

    .line 248
    return-void
.end method
