import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_model.freezed.dart';
part 'crypto_model.g.dart';

@freezed
class Crypto with _$Crypto {
  const factory Crypto({
    required String id,
    required String symbol,
    required String name,
    required double currentPrice,
    required double marketCap,
    required double marketCapRank,
    required double totalVolume,
    required double high24h,
    required double low24h,
    required double priceChange24h,
    required double priceChangePercentage24h,
    required double marketCapChange24h,
    required double marketCapChangePercentage24h,
    required double circulatingSupply,
    required double totalSupply,
    required double maxSupply,
    required double ath,
    required double athChangePercentage,
    required DateTime athDate,
    required double atl,
    required double atlChangePercentage,
    required DateTime atlDate,
    required DateTime lastUpdated,
    required List<PricePoint> priceHistory,
    required List<VolumeData> volumeData,
    required TechnicalIndicators technicalIndicators,
    required SentimentData sentimentData,
    required List<NewsArticle> relatedNews,
    required DeFiMetrics defiMetrics,
    required OnChainData onChainData,
    required SocialMetrics socialMetrics,
    required DeveloperMetrics developerMetrics,
    required List<ExchangeData> exchangeData,
    required List<WalletData> whaleWallets,
    required NetworkMetrics networkMetrics,
    required StakingData stakingData,
    required GovernanceData governanceData,
    required List<ForkData> forks,
    required List<PartnershipData> partnerships,
    required List<RegulatoryData> regulatoryUpdates,
    required bool isWatched,
    required int userViews,
    required DateTime lastViewed,
    required List<String> userNotes,
    required double userRating,
    required List<String> tags,
  }) = _Crypto;

  factory Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);
}

@freezed
class DeFiMetrics with _$DeFiMetrics {
  const factory DeFiMetrics({
    required double totalValueLocked,
    required double totalValueLockedUSD,
    required double totalValueLockedUSDChange24h,
    required double totalValueLockedUSDChangePercentage24h,
    required List<ProtocolData> topProtocols,
    required double defiMarketCap,
    required double defiMarketCapChange24h,
    required double defiMarketCapChangePercentage24h,
    required double defiDominance,
    required List<YieldData> yieldOpportunities,
  }) = _DeFiMetrics;

  factory DeFiMetrics.fromJson(Map<String, dynamic> json) => _$DeFiMetricsFromJson(json);
}

@freezed
class ProtocolData with _$ProtocolData {
  const factory ProtocolData({
    required String name,
    required String category,
    required double tvl,
    required double tvlChange24h,
    required double tvlChangePercentage24h,
    required double volume24h,
    required double fees24h,
    required double apy,
    required List<String> chains,
  }) = _ProtocolData;

  factory ProtocolData.fromJson(Map<String, dynamic> json) => _$ProtocolDataFromJson(json);
}

@freezed
class YieldData with _$YieldData {
  const factory YieldData({
    required String protocol,
    required String asset,
    required double apy,
    required double apyChange24h,
    required double tvl,
    required String risk,
    required List<String> strategies,
  }) = _YieldData;

  factory YieldData.fromJson(Map<String, dynamic> json) => _$YieldDataFromJson(json);
}

@freezed
class OnChainData with _$OnChainData {
  const factory OnChainData({
    required double activeAddresses,
    required double activeAddressesChange24h,
    required double transactions24h,
    required double transactions24hChange,
    required double averageTransactionValue,
    required double averageTransactionValueChange24h,
    required List<BlockData> recentBlocks,
    required List<TransactionData> largeTransactions,
    required NetworkFees networkFees,
    required List<SmartContractData> smartContracts,
  }) = _OnChainData;

  factory OnChainData.fromJson(Map<String, dynamic> json) => _$OnChainDataFromJson(json);
}

@freezed
class BlockData with _$BlockData {
  const factory BlockData({
    required String hash,
    required int height,
    required DateTime timestamp,
    required int transactions,
    required double size,
    required double fees,
  }) = _BlockData;

  factory BlockData.fromJson(Map<String, dynamic> json) => _$BlockDataFromJson(json);
}

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
    required String hash,
    required String from,
    required String to,
    required double value,
    required double gasPrice,
    required double gasUsed,
    required DateTime timestamp,
    required String type,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) => _$TransactionDataFromJson(json);
}

@freezed
class NetworkFees with _$NetworkFees {
  const factory NetworkFees({
    required double averageGasPrice,
    required double averageGasPriceChange24h,
    required double medianGasPrice,
    required double fastGasPrice,
    required double slowGasPrice,
    required List<FeeHistory> feeHistory,
  }) = _NetworkFees;

  factory NetworkFees.fromJson(Map<String, dynamic> json) => _$NetworkFeesFromJson(json);
}

@freezed
class FeeHistory with _$FeeHistory {
  const factory FeeHistory({
    required DateTime timestamp,
    required double gasPrice,
    required double gasUsed,
  }) = _FeeHistory;

  factory FeeHistory.fromJson(Map<String, dynamic> json) => _$FeeHistoryFromJson(json);
}

@freezed
class SmartContractData with _$SmartContractData {
  const factory SmartContractData({
    required String address,
    required String name,
    required String type,
    required double value,
    required int transactions,
    required DateTime lastActivity,
  }) = _SmartContractData;

  factory SmartContractData.fromJson(Map<String, dynamic> json) => _$SmartContractDataFromJson(json);
}

@freezed
class SocialMetrics with _$SocialMetrics {
  const factory SocialMetrics({
    required int twitterFollowers,
    required int twitterFollowersChange24h,
    required int redditSubscribers,
    required int redditSubscribersChange24h,
    required double redditScore,
    required double redditScoreChange24h,
    required int telegramMembers,
    required int telegramMembersChange24h,
    required double socialSentiment,
    required double socialSentimentChange24h,
    required List<SocialPost> trendingPosts,
    required List<InfluencerData> topInfluencers,
  }) = _SocialMetrics;

  factory SocialMetrics.fromJson(Map<String, dynamic> json) => _$SocialMetricsFromJson(json);
}

@freezed
class SocialPost with _$SocialPost {
  const factory SocialPost({
    required String id,
    required String platform,
    required String author,
    required String content,
    required int likes,
    required int shares,
    required int comments,
    required DateTime timestamp,
    required double sentiment,
  }) = _SocialPost;

  factory SocialPost.fromJson(Map<String, dynamic> json) => _$SocialPostFromJson(json);
}

@freezed
class InfluencerData with _$InfluencerData {
  const factory InfluencerData({
    required String name,
    required String platform,
    required int followers,
    required double influence,
    required List<String> recentMentions,
  }) = _InfluencerData;

  factory InfluencerData.fromJson(Map<String, dynamic> json) => _$InfluencerDataFromJson(json);
}

@freezed
class DeveloperMetrics with _$DeveloperMetrics {
  const factory DeveloperMetrics({
    required int githubCommits,
    required int githubCommitsChange24h,
    required int githubContributors,
    required int githubContributorsChange24h,
    required int githubStars,
    required int githubForks,
    required int githubIssues,
    required int githubPullRequests,
    required List<RepositoryData> topRepositories,
    required List<DeveloperData> topDevelopers,
  }) = _DeveloperMetrics;

  factory DeveloperMetrics.fromJson(Map<String, dynamic> json) => _$DeveloperMetricsFromJson(json);
}

@freezed
class RepositoryData with _$RepositoryData {
  const factory RepositoryData({
    required String name,
    required String url,
    required int stars,
    required int forks,
    required int issues,
    required int pullRequests,
    required DateTime lastUpdated,
    required String language,
  }) = _RepositoryData;

  factory RepositoryData.fromJson(Map<String, dynamic> json) => _$RepositoryDataFromJson(json);
}

@freezed
class DeveloperData with _$DeveloperData {
  const factory DeveloperData({
    required String name,
    required String username,
    required int contributions,
    required List<String> repositories,
    required DateTime lastActivity,
  }) = _DeveloperData;

  factory DeveloperData.fromJson(Map<String, dynamic> json) => _$DeveloperDataFromJson(json);
}

@freezed
class ExchangeData with _$ExchangeData {
  const factory ExchangeData({
    required String exchange,
    required double price,
    required double volume24h,
    required double volume24hChange,
    required double bid,
    required double ask,
    required double spread,
    required DateTime lastUpdated,
  }) = _ExchangeData;

  factory ExchangeData.fromJson(Map<String, dynamic> json) => _$ExchangeDataFromJson(json);
}

@freezed
class WalletData with _$WalletData {
  const factory WalletData({
    required String address,
    required String label,
    required double balance,
    required double balanceChange24h,
    required List<TransactionData> recentTransactions,
    required DateTime lastActivity,
  }) = _WalletData;

  factory WalletData.fromJson(Map<String, dynamic> json) => _$WalletDataFromJson(json);
}

@freezed
class NetworkMetrics with _$NetworkMetrics {
  const factory NetworkMetrics({
    required double hashRate,
    required double hashRateChange24h,
    required double difficulty,
    required double difficultyChange24h,
    required int blockHeight,
    required double blockTime,
    required double blockSize,
    required List<NodeData> nodes,
  }) = _NetworkMetrics;

  factory NetworkMetrics.fromJson(Map<String, dynamic> json) => _$NetworkMetricsFromJson(json);
}

@freezed
class NodeData with _$NodeData {
  const factory NodeData({
    required String address,
    required String type,
    required String version,
    required DateTime lastSeen,
    required bool isActive,
  }) = _NodeData;

  factory NodeData.fromJson(Map<String, dynamic> json) => _$NodeDataFromJson(json);
}

@freezed
class StakingData with _$StakingData {
  const factory StakingData({
    required double stakedAmount,
    required double stakedPercentage,
    required double stakingRewards,
    required double stakingAPY,
    required List<ValidatorData> topValidators,
    required List<StakingPoolData> stakingPools,
  }) = _StakingData;

  factory StakingData.fromJson(Map<String, dynamic> json) => _$StakingDataFromJson(json);
}

@freezed
class ValidatorData with _$ValidatorData {
  const factory ValidatorData({
    required String address,
    required String name,
    required double stake,
    required double commission,
    required double uptime,
    required int delegators,
  }) = _ValidatorData;

  factory ValidatorData.fromJson(Map<String, dynamic> json) => _$ValidatorDataFromJson(json);
}

@freezed
class StakingPoolData with _$StakingPoolData {
  const factory StakingPoolData({
    required String name,
    required double totalStaked,
    required double apy,
    required double minStake,
    required double maxStake,
    required String lockPeriod,
  }) = _StakingPoolData;

  factory StakingPoolData.fromJson(Map<String, dynamic> json) => _$StakingPoolDataFromJson(json);
}

@freezed
class GovernanceData with _$GovernanceData {
  const factory GovernanceData({
    required List<ProposalData> activeProposals,
    required List<ProposalData> recentProposals,
    required double totalVotingPower,
    required double participationRate,
    required List<GovernanceTokenData> governanceTokens,
  }) = _GovernanceData;

  factory GovernanceData.fromJson(Map<String, dynamic> json) => _$GovernanceDataFromJson(json);
}

@freezed
class ProposalData with _$ProposalData {
  const factory ProposalData({
    required String id,
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required double forVotes,
    required double againstVotes,
    required double abstainVotes,
    required String status,
  }) = _ProposalData;

  factory ProposalData.fromJson(Map<String, dynamic> json) => _$ProposalDataFromJson(json);
}

@freezed
class GovernanceTokenData with _$GovernanceTokenData {
  const factory GovernanceTokenData({
    required String symbol,
    required double totalSupply,
    required double circulatingSupply,
    required double votingPower,
  }) = _GovernanceTokenData;

  factory GovernanceTokenData.fromJson(Map<String, dynamic> json) => _$GovernanceTokenDataFromJson(json);
}

@freezed
class ForkData with _$ForkData {
  const factory ForkData({
    required String name,
    required String symbol,
    required DateTime forkDate,
    required double forkedAtPrice,
    required double currentPrice,
    required double marketCap,
  }) = _ForkData;

  factory ForkData.fromJson(Map<String, dynamic> json) => _$ForkDataFromJson(json);
}

@freezed
class PartnershipData with _$PartnershipData {
  const factory PartnershipData({
    required String partner,
    required String type,
    required String description,
    required DateTime announcementDate,
    required double impactScore,
  }) = _PartnershipData;

  factory PartnershipData.fromJson(Map<String, dynamic> json) => _$PartnershipDataFromJson(json);
}

@freezed
class RegulatoryData with _$RegulatoryData {
  const factory RegulatoryData({
    required String jurisdiction,
    required String regulation,
    required String status,
    required DateTime effectiveDate,
    required double impactScore,
    required String description,
  }) = _RegulatoryData;

  factory RegulatoryData.fromJson(Map<String, dynamic> json) => _$RegulatoryDataFromJson(json);
} 