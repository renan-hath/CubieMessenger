.class public final Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;
.super Ljava/lang/Object;
.source "LocalyticsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributesDbColumns"
.end annotation


# static fields
.field static final ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 781
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_0"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    .line 786
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_1"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    .line 791
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_2"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    .line 796
    const-string/jumbo v0, "%s:%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "com.localytics.android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "custom_dimension_3"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    return-void
.end method
