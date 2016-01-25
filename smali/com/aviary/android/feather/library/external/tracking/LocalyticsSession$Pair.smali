.class final Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 3856
    .local p0, "this":Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;, "Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3858
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;->first:Ljava/lang/Object;

    .line 3859
    iput-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$Pair;->second:Ljava/lang/Object;

    .line 3860
    return-void
.end method
