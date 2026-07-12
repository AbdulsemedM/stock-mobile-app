import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../utils/formatters.dart';

/// Product list tile for warehouse/shop screens.
class SalesProductTile extends StatelessWidget {
  const SalesProductTile({
    required this.name,
    required this.partNumber,
    required this.location,
    required this.price,
    required this.quantity,
    this.imageUrl,
    this.locationColor,
    this.onTap,
    this.onMenu,
    super.key,
  });

  final String name;
  final String partNumber;
  final String location;
  final double price;
  final double quantity;
  final String? imageUrl;
  final Color? locationColor;
  final VoidCallback? onTap;
  final VoidCallback? onMenu;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isOutOfStock = quantity <= 0;
    final locColor = locationColor ?? AppColors.accent;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.base,
          vertical: AppSpacing.md,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Thumbnail(imageUrl: imageUrl),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (onMenu != null)
                        IconButton(
                          onPressed: onMenu,
                          icon: const Icon(
                            Icons.more_horiz,
                            color: AppColors.neutral400,
                            size: 20,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'P.N: $partNumber',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.neutral400,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    location,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: locColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      Text(
                        'Price: ${Formatters.currency(price)}',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Quantity: ${quantity.toStringAsFixed(1)}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: isOutOfStock
                              ? AppColors.warning
                              : AppColors.neutral600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    const size = 72.0;

    if (imageUrl == null || imageUrl!.isEmpty) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: AppColors.neutral100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(LucideIcons.package, color: AppColors.neutral400),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorWidget: (_, __, ___) => Container(
          width: size,
          height: size,
          color: AppColors.neutral100,
          child: const Icon(LucideIcons.imageOff, color: AppColors.neutral400),
        ),
      ),
    );
  }
}
