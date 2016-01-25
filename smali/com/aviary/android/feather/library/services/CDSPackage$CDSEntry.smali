.class public final Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
.super Ljava/lang/Object;
.source "CDSPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/CDSPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CDSEntry"
.end annotation


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final id:J

.field private final identifier:Ljava/lang/String;

.field private final packId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "$packId"    # J
    .param p3, "$id"    # J
    .param p5, "$identifier"    # Ljava/lang/String;
    .param p6, "$displayName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->packId:J

    .line 18
    iput-wide p3, p0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->id:J

    .line 19
    iput-object p5, p0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->identifier:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->displayName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->id:J

    return-wide v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->identifier:Ljava/lang/String;

    return-object v0
.end method
