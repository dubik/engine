// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#pragma once

#include <memory>
#include <optional>
#include <variant>
#include <vector>

#include "impeller/entity/contents/filters/inputs/filter_input.h"
#include "impeller/entity/entity.h"
#include "impeller/geometry/sigma.h"
#include "impeller/renderer/formats.h"

namespace impeller {

class FilterContents : public Contents {
 public:
  enum class BlurStyle {
    /// Blurred inside and outside.
    kNormal,
    /// Solid inside, blurred outside.
    kSolid,
    /// Nothing inside, blurred outside.
    kOuter,
    /// Blurred inside, nothing outside.
    kInner,
  };

  // Domain is kRGBA, we may decide to support more color modes later.
  struct ColorMatrix {
    float array[20];
  };

  enum class MorphType { kDilate, kErode };

  static std::shared_ptr<FilterContents> MakeBlend(
      Entity::BlendMode blend_mode,
      FilterInput::Vector inputs,
      std::optional<Color> foreground_color = std::nullopt);

  static std::shared_ptr<FilterContents> MakeDirectionalGaussianBlur(
      FilterInput::Ref input,
      Sigma sigma,
      Vector2 direction,
      BlurStyle blur_style = BlurStyle::kNormal,
      Entity::TileMode tile_mode = Entity::TileMode::kDecal,
      FilterInput::Ref alpha_mask = nullptr,
      Sigma secondary_sigma = {},
      const Matrix& effect_transform = Matrix());

  static std::shared_ptr<FilterContents> MakeGaussianBlur(
      FilterInput::Ref input,
      Sigma sigma_x,
      Sigma sigma_y,
      BlurStyle blur_style = BlurStyle::kNormal,
      Entity::TileMode tile_mode = Entity::TileMode::kDecal,
      const Matrix& effect_transform = Matrix());

  static std::shared_ptr<FilterContents> MakeBorderMaskBlur(
      FilterInput::Ref input,
      Sigma sigma_x,
      Sigma sigma_y,
      BlurStyle blur_style = BlurStyle::kNormal,
      const Matrix& effect_transform = Matrix());

  static std::shared_ptr<FilterContents> MakeDirectionalMorphology(
      FilterInput::Ref input,
      Radius radius,
      Vector2 direction,
      MorphType morph_type);

  static std::shared_ptr<FilterContents> MakeMorphology(FilterInput::Ref input,
                                                        Radius radius_x,
                                                        Radius radius_y,
                                                        MorphType morph_type);

  static std::shared_ptr<FilterContents> MakeColorMatrix(
      FilterInput::Ref input,
      const ColorMatrix& matrix);

  static std::shared_ptr<FilterContents> MakeLinearToSrgbFilter(
      FilterInput::Ref input);

  static std::shared_ptr<FilterContents> MakeSrgbToLinearFilter(
      FilterInput::Ref input);

  FilterContents();

  ~FilterContents() override;

  /// @brief  The input texture sources for this filter. Each input's emitted
  ///         texture is expected to have premultiplied alpha colors.
  ///
  ///         The number of required or optional textures depends on the
  ///         particular filter's implementation.
  void SetInputs(FilterInput::Vector inputs);

  /// @brief  Screen space bounds to use for cropping the filter output.
  void SetCoverageCrop(std::optional<Rect> coverage_crop);

  /// @brief  Sets the transform which gets appended to the effect of this
  ///         filter. Note that this is in addition to the entity's transform.
  void SetEffectTransform(Matrix effect_transform);

  // |Contents|
  bool Render(const ContentContext& renderer,
              const Entity& entity,
              RenderPass& pass) const override;

  // |Contents|
  std::optional<Rect> GetCoverage(const Entity& entity) const override;

  // |Contents|
  std::optional<Snapshot> RenderToSnapshot(const ContentContext& renderer,
                                           const Entity& entity) const override;

  virtual Matrix GetLocalTransform() const;

  Matrix GetTransform(const Matrix& parent_transform) const;

 private:
  virtual std::optional<Rect> GetFilterCoverage(
      const FilterInput::Vector& inputs,
      const Entity& entity,
      const Matrix& effect_transform) const;

  /// @brief  Converts zero or more filter inputs into a new texture.
  virtual std::optional<Snapshot> RenderFilter(
      const FilterInput::Vector& inputs,
      const ContentContext& renderer,
      const Entity& entity,
      const Matrix& effect_transform,
      const Rect& coverage) const = 0;

  std::optional<Rect> GetLocalCoverage(const Entity& local_entity) const;

  FilterInput::Vector inputs_;
  std::optional<Rect> coverage_crop_;
  Matrix effect_transform_;

  FML_DISALLOW_COPY_AND_ASSIGN(FilterContents);
};

}  // namespace impeller
