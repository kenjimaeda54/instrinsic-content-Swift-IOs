# Instrinsic
Pequena aplicação para entender uso do [Instrinsic](https://developer.apple.com/documentation/uikit/uiview/1622600-intrinsiccontentsize)


## Feature
- Instrinsic e uma propriedade que garante para uma certo componente, comportamento diferente do padrão que esperado pelo XCODE
- Exemplo apliquei contentHugginPriority 251,para poder aumentar o campo do text field
- Basicamente a prioridade fica por conta do xcode, então melhor usar uma ferramente para verificar qual deveria ser aplicado



```swift
		NSLayoutConstraint.activate([
			
			labelName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
			labelName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),

			inpuText.leadingAnchor.constraint(equalTo: labelName.trailingAnchor,constant: 8),
			inpuText.firstBaselineAnchor.constraint(equalTo: labelName.firstBaselineAnchor),
			inpuText.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8)
		])
		labelName.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
		
	}
	

``` 
