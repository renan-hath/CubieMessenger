.class final Lcom/aviary/android/feather/library/external/tracking/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final CURRENT_API_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/aviary/android/feather/library/external/tracking/DatapointHelper;->getApiLevel()I

    move-result v0

    sput v0, Lcom/aviary/android/feather/library/external/tracking/Constants;->CURRENT_API_LEVEL:I

    return-void
.end method
